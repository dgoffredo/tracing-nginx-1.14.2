from nginx:1.14.2

copy ./index.html /usr/share/nginx/html/
copy ./ngx_http_opentracing_module.so /usr/lib/nginx/modules/
copy ./linux-amd64-libdd_opentracing_plugin.so /usr/local/lib/libdd_opentracing_plugin.so
copy ./dd-config.json /etc/nginx/
copy ./nginx.conf /etc/nginx/
