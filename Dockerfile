#https://docs.bitnami.com/azure/infrastructure/lamp/administration/increase-upload-limit-phpmyadmin/

ARG PHPMYADMIN_TAG

FROM bitnami/phpmyadmin:${PHPMYADMIN_TAG:-latest}

RUN set -ex; \
    { \
        echo ''; \
        echo 'if(file_exists(__DIR__."/config.custom.php")) include_once __DIR__."/config.custom.php";'; \
    } >> /bitnami/phpmyadmin/config.inc.php;
