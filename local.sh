###!/bin/bash
rm sitio/api.spec.yaml
rm sitio/api.spec.yaml.bak
rm sitio/api.pre-spec.yaml
swagger-cli bundle -t yaml -o sitio/api.pre-spec.yaml api.cl.yaml
openapi-snippet sitio/api.pre-spec.yaml -t shell_curl -t java_okhttp -t csharp -t javascript -t node -t php -t python -o sitio/api.spec.yaml
sed -i.bak "s/x-codeSamples/x-code-samples/g" sitio/api.spec.yaml
echo "http://localhost:1234"
php -S localhost:1234 -t sitio



