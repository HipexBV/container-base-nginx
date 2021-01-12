server {
    listen       8080;
    server_name  *.${DOMAIN} ${DOMAIN};

    add_header X-Environment "Hipex/Cloud";

    # App overwritable parameters
    set ${DOLLAR}mage_run_type 'store';
    set ${DOLLAR}mage_run_code '';

    include /etc/nginx/app/${DOMAIN}/*.nginx.conf;
    include /etc/nginx/app/*.nginx.conf;
    include /etc/nginx/site.d/*.conf;
}
