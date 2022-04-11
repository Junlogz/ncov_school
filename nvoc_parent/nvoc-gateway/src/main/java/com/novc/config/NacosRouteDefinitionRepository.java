package com.novc.config;

import org.springframework.stereotype.Component;

import com.alibaba.cloud.nacos.NacosConfigManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.nacos.api.config.listener.Listener;
import com.alibaba.nacos.api.exception.NacosException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.gateway.event.RefreshRoutesEvent;
import org.springframework.cloud.gateway.route.RouteDefinition;
import org.springframework.cloud.gateway.route.RouteDefinitionRepository;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.concurrent.Executor;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/11 15:13
 */
@Component
public class NacosRouteDefinitionRepository implements RouteDefinitionRepository, InitializingBean {

    @Autowired
    ApplicationEventPublisher publisher;
    @Autowired
    NacosConfigManager nacos;
    @Value("${nacos.gateway.route.config.data-id}")
    String gatewayDataId;
    @Value("${nacos.gateway.route.config.group}")
    String gatewayGroup;

    @Override
    public void afterPropertiesSet() throws Exception {
        // 增加nacos数据修改 的监听
        nacos.getConfigService().addListener(gatewayDataId, gatewayGroup, new Listener() {
            @Override
            public void receiveConfigInfo(String configInfo) {
                // nacos配置被修改了 通知 gateway 刷新路由， 重新调用getRouteDefinitions方法
                publisher.publishEvent(new RefreshRoutesEvent(null));
            }

            @Override
            public Executor getExecutor() {
                // TODO Auto-generated method stub
                return null;
            }
        });
    }

    /***
     * 程序启动 时或者 路由配置修改 返回 给 gateway 的所有路由规则
     */
    @Override
    public Flux<RouteDefinition> getRouteDefinitions() {
        try {
            // 获取当前nacos 配置的值
            String content = nacos.getConfigService().getConfig(gatewayDataId, gatewayGroup, 5000);
            System.out.println("更新gateway路由信息 >>" + content);
            // 返回给gateway
            return Flux.fromIterable(JSON.parseArray(content, RouteDefinition.class));
        } catch (NacosException e) {
            throw new RuntimeException("nacos 网关路由配置为空 , dataId:" + gatewayDataId);
        }
    }

    @Override
    public Mono<Void> save(Mono<RouteDefinition> route) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Mono<Void> delete(Mono<String> routeId) {
        // TODO Auto-generated method stub
        return null;
    }

}
