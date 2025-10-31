#! /bin/bash

sudo -i

yum install -y git httpd

systemctl enable httpd
systemctl start httpd

cd /tmp/

git clone https://github.com/charannatrajn2025-ai/2147_titan_folio.git

cp -r 2147_titan_folio/* /var/www/html/

rm -rf /tmp/2147_titan_folio

systemctl restart httpd

