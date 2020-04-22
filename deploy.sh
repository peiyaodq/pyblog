rm -rf ./public
hugo -D
scp -r ./public/ ecs:~/public
