u_dir="$1"
u_name="$2"
u_email="$3"
u_pass="$4"

mkdir -p $u_dir&& cd $u_dir

npm install hexo-cli -g
npm install hexo-deployer-git --save
npm install hexo-tag-plantuml --save
npm install hexo-generator-feed --save

hexo init

git config --global user.name "$u_name"
git config --global user.email "$u_email"

ssh-keygen -t rsa -C "$u_email"
ssh -T git@github.com
