domain="acgfan-py.fun"
time=$(date "+%Y-%m-%d %H:%M:%S")

rm -rf public
hugo -D
touch public/CNAME
echo $domain > public/CNAME


mkdir -p blog
yes | cp -r ./public/* ./blog/
cd blog && git add . && git commit -m "${time}" && git push -u origin master && cd ../
