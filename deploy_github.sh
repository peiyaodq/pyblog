DOMAIN="acgfan-py.fun"
TIME=$(date "+%Y-%m-%d %H:%M:%S")
WORKDIR=$(pwd)

echo "-------PACKING BLOG--------"
rm -rf public
hugo -D
touch public/CNAME
echo $DOMAIN > public/CNAME
mkdir -p blog
yes | cp -r ./public/* ./blog/

echo "-------COMMITING BLOG RELEASE--------"
cd $WORKDIR/blog && git add . && git commit -m "${TIME}"
cd $WORKDIR/blog && git push -u origin master

echo "-------COMMITING BLOG SOURCE CODE-------"
cd $WORKDIR && git add . && git commit -m "${TIME}"
cd $WORKDIR && git push -u origin master
