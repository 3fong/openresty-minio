FROM openresty/openresty:alpine
LABEL name="liulei"
LABEL version="v1.0.0"
ENV name=liulei
ENV version=v1.0.0
COPY nginx.conf usr/local/openresty/nginx/conf/
ADD ./lua-plugins/lua-resty-jwt-0.1.11.tar.gz /usr/local/openresty/nginx/lua-plugins
COPY ./lua-plugins/hmac.lua /usr/local/openresty/nginx/lua-plugins/lua-resty-jwt-0.1.11/lib/resty
COPY ./lua-plugins/hashids.lua /usr/local/openresty/nginx/lua-plugins/lua-resty-jwt-0.1.11/lib
EXPOSE 80
EXPOSE 443
EXPOSE 88