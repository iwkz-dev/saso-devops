#!/bin/bash

echo "update saso admin-site"
cd iwkz-saso-fe/admin-site
git pull
npm i
npm run build
echo "admin-site update done...."

cd ..
cd ..

echo "start update saso client-site"
cd iwkz-saso-fe/client-site
git pull
npm i
npm run build
echo "client-site update done...."

cd ..
cd ..

echo "start update saso backend"
cd iwkz-saso-be
git pull
npm i
echo "backend update done..."

cd ..

pm2 restart saso-be
pm2 restart saso-client
pm2 restart saso-admin