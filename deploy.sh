#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 上传代码
git add .
git commit -m 'update'
git push -f git@github.com:13roky/13rokyDocs.git master
git push -f git@gitee.com:broky-dev/vuepress_test.git master



# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'update'


# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:13roky/13rokyDocs.git master:gh-pages

cd -
