
 ###
set -e

# 生成静态文件
npm run build

cd docs/.vuepress/dist
# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:YLSoftWorkGroup/YlDocument.git master:gh-pages 

cd -


git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:YLSoftWorkGroup/YlDocument.git master 