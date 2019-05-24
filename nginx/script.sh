export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=2nuc6zj48gal4hy9exsb

bosh alias-env vbox -e 192.168.50.6 --ca-cert cert.crt

bosh -e vbox upload-release --sha1 13cf87b2394c7d3924f9d66836c56302fb46a90d https://bosh.io/d/github.com/cloudfoundry-community/nginx-release?v=1.17.0
bosh -e vbox -d nginxagain deploy manifest.yml

