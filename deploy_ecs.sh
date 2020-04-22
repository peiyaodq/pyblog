SERVER=ecs

rm -rf ./public
hugo -D
ssh $SERVER "rm -rf ~/public"
scp -r ./public/ $SERVER:~/public
