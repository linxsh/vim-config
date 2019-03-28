### zsh安装以及配置
```
apt-get install zsh
chsh -s /bin/zsh  ##重启生效
cp vim-config/zsh-shell/zshrc ~/.zshrc

脚本执行命令not found:
例如source, 需要执行,zsh scripts.sh
```

### git安装以及配置
```
apt-get install git
cp vim-config/zsh-shell/gitconfig ~/.gitconfig
```

### vim安装以及配置
```
apt-get install vim
git clone https://github.com/linxsh/vim-config.git
cp vim-config/vimrc ~/.vimrc
cp vim-config/vim ~/.vim -rf

插件安装:
/home/linxsh: vim
:PluginInstall

vim文档使用说明: http://blog.csdn.net/namecyf/article/details/7787479
```

### /opt下更改用户组
```
sudo chown linxsh -R /opt
```
### 串口用户权限更改
```
sudo usermod -aG dialout username
```
