##在用户根目录下直接克隆。

```
git clone https://github.com/linxsh/vim-config.git
```
##将vim-config\.vimrc文件剪切到用户根目录下

```
cp vim-config/.vimrc ~/
```
##修改vim文件夹的名称为.vim

```
cp vim-config/.vim ~/ -rf
```

##插件安装
```
/home/linxsh: vim
:PluginInstall
```
##zsh + vim使用
```
apt-get install zsh
chsh -s /bin/zsh  ##chsh -s /bin/zsh
cp ../zsh-shell/.zshrc ~/
```
##ubuntu 64bit 安装32bit交叉编译工具链需要安装以下库
```
apt-get install lib32z1 lib32ncurses5
apt-get install lib32stdc++6
```
##大功告成
