.PHONY: all
all: linux-amd64-libdd_opentracing_plugin.so ngx_http_opentracing_module.so dd-config.json nginx.conf

linux-amd64-libdd_opentracing_plugin.so:
	wget 'https://github.com/DataDog/dd-opentracing-cpp/releases/download/v1.3.7/$@.gz'
	gunzip '$@.gz'
	chmod a+rx '$@'

linux-amd64-nginx-1.14.2-ot16-ngx_http_module.so.tgz:
	wget 'https://github.com/opentracing-contrib/nginx-opentracing/releases/download/v0.31.0/$@'

ngx_http_opentracing_module.so: linux-amd64-nginx-1.14.2-ot16-ngx_http_module.so.tgz
	tar -xzf $<
	chmod a+rx '$@'

dd-config.json:
	wget 'https://raw.githubusercontent.com/DataDog/dd-opentracing-cpp/master/examples/nginx-tracing/$@'
	chmod a+r '$@'

nginx.conf:
	wget 'https://raw.githubusercontent.com/DataDog/dd-opentracing-cpp/master/examples/nginx-tracing/$@'
	chmod a+r '$@'
