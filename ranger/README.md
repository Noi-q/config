# ranger and It's Config

终端下的文件管理器

----


```
sudo pacman -S ranger
git clone https://github.com/Noi-q/ranger.git
mv ranger ~/.config
cd ~/.config/ranger
```



#### images preview

- ArchLinux

`sudo pacman -S w3m`

- vim ~/ranger/rc.conf

`set preview_images true`

`set preview_images_method w3m`

#### 可能部分需要下载一个字体
`sudo pacman -S nerd-fonts-robotomono`

#### 解决部分ArchLinux下的w3m无法使用预览图片的问题
`sudo pacman -S imlib2`
