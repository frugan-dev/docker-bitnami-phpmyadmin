#https://docs.bitnami.com/azure/infrastructure/lamp/administration/increase-upload-limit-phpmyadmin/

ARG PHPMYADMIN_TAG

ENV PHPMYADMIN_TAG=${PHPMYADMIN_TAG:-latest}

FROM bitnami/phpmyadmin:${PHPMYADMIN_TAG}
