Datadog Tracing NGINX 1.14.2
============================
This repository demonstrates how the [nginx:1.14.2][1] Docker image can be traced
using [nginx-opentracing][2] and [dd-opentracing-cpp][3].

Development on [dd-opentracing-cpp][3] has ceased in favor of the newer
[nginx-datadog][4] nginx module. `nginx-datadog` does not support nginx 1.14.2.

Usage
-----
```console
$ make
```
Then,
```console
$ DD_API_KEY=your_api_key_here docker compose up --build
```
Finally, in another shell,
```console
$ curl 'http://localhost:8080/'
<!DOCTYPE HTML>
<html>
    <head>
        <title>NGINX</title>
    </head>
    <body>
        <p>Hello, world!</p>
    </body>
</html>
```
The resulting trace will appear in the Datadog UI with `service:nginx`.

[1]: https://hub.docker.com/layers/library/nginx/1.14.2/images/sha256-295c7be079025306c4f1d65997fcf7adb411c88f139ad1d34b537164aa060369?context=explore
[2]: https://github.com/opentracing-contrib/nginx-opentracing
[3]: https://github.com/DataDog/dd-opentracing-cpp
[4]: https://github.com/DataDog/nginx-datadog
