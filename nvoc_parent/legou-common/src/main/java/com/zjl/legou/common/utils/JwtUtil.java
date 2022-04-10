package com.zjl.legou.common.utils;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTCreator;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;

import java.util.Calendar;
import java.util.Map;

public class JwtUtil {
    private static String sign = "qazwsxedcrfvtgbyhnujmikolp!@#$%^&*+-/";

    /**
     * 创建token
     */
    public static String getToken(Map<String, String> map){
        Calendar instance = Calendar.getInstance();
        instance.add(Calendar.DATE, 7);

        JWTCreator.Builder builder = JWT.create();

        map.forEach((k,v) ->{
            builder.withClaim(k,v);
        });

        return builder.withExpiresAt(instance.getTime())
                .sign(Algorithm.HMAC256(sign));
    }

    /**
     * 检验token
     */
    public static DecodedJWT verify(String token) throws Exception {
        try {
            DecodedJWT verify = JWT.require(Algorithm.HMAC256(sign)).build().verify(token);
            return verify;
        }catch (Exception e){
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
    }
}
