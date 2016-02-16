u_pass="$1"
u_name="joerong666"
u_email="joerong666@126.com"

mkdir hexo
cd hexo

npm install hexo-cli -g
hexo init

cat <<EOF >~/.git-credentials
https://$u_name:$u_pass@github.com
EOF

git config --global user.name "$u_name"
git config --global user.email "$u_email"
git config --global credential.helper store

git clone https://github.com/$u_name/hexo-theme-green-light.git themes/my-green-light

rm -rf source
git clone https://github.com/$u_name/blog.git source

ln -f source/hexo_config.yml _config.yml
ln -f source/theme_config.yml themes/my-green-light/_config.yml

npm install
npm install hexo-deployer-git --save
npm install hexo-tag-plantuml --save
npm install hexo-generator-feed --save

#ssh-keygen -t rsa -C "$u_email"
#cat ~/.id_rsa.pub
