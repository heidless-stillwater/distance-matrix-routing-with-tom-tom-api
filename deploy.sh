



echo "switching to Branch main"  
git checkout main 
echo "building app..." 
export NODE_OPTIONS=--openssl-legacy-provider && npm run build
echo "deploying files to server..." 
scp -r build/* heidless@139.162.216.144:/var/www/139.162.216.144/  
echo "done!"