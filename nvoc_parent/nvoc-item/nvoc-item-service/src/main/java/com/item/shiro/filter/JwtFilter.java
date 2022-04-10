package com.item.shiro.filter;

import com.auth0.jwt.interfaces.DecodedJWT;
import com.item.shiro.token.JwtToken;
import com.zjl.legou.common.utils.ApplicationContextUtil;
import com.zjl.legou.common.utils.JwtUtil;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.BasicHttpAuthenticationFilter;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.stereotype.Component;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

@Component
public class JwtFilter extends BasicHttpAuthenticationFilter {

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String token = httpServletRequest.getHeader("token");
        if (token != null){
            try {
                /*验证token是否符合*/
                DecodedJWT verify = JwtUtil.verify(token);
                /*从token中取出id*/
                String id = verify.getClaim("id").asString();
                /*获取redis中对应id的token*/
                String authentication = (String) getRedisTemplate().opsForHash().get("Authentication", id);
                /*防止用户踩狗屎，蒙对token格式*/
                if (authentication == null){
                    throw new UnknownAccountException("用户异常登录！");
                }
                /*检查用户是否在其他设备登录*/
                if (!authentication.equals(token)){
                    throw new UnknownAccountException("用户已在其他设备登录！");
                }
                /*token校验无误后，进行认证*/
                return executeLogin(request, response);
            }catch (Exception e){
                e.printStackTrace();
                throw new UnknownAccountException("用户携带的token出错了！");
            }
        }
        return true;
    }

    @Override
    protected boolean executeLogin(ServletRequest request, ServletResponse response) throws Exception {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String token = httpServletRequest.getHeader("token");
        if (token != null){
            try {
                JwtToken jwtToken = new JwtToken(token);
                Subject subject = this.getSubject(request, response);
                subject.login(jwtToken);
                return true;
            }catch (Exception e){
                e.printStackTrace();
                throw new UnknownAccountException("用户认证失败！");
            }
        }
        return false;
    }

    public RedisTemplate getRedisTemplate(){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        redisTemplate.setKeySerializer(new StringRedisSerializer());
        return redisTemplate;
    }
}
