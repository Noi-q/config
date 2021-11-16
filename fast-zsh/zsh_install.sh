#!/bin/bash

ping baidu.com -c 2 > /dev/null

if [ $? -ne 0 ] ;then
    clear
    echo -e "\e[1;31mError: 当前网络不可用\e[0m" && exit
fi

# sudo pacman -S zsh git yay cowsay lsd fortune-mod --noconfirm && clear
sudo pacman -S zsh git lsd fortune-mod --noconfirm && clear
    
echo -e "\e[1;32mInfo: 基本软件安装完成! \e[0m" 

echo -e "\e[1;33mInfo: 更换默认shell\e[0m"

chsh -s /bin/zsh > /dev/null 

# install oh-my-zsh
echo -e "\e[1;33mInfo: 正在安装 oh-my-zsh ! \e[0m"
chmod +x ./script/oh-my-zsh.sh  
sh -c ./script/oh-my-zsh.sh > /dev/null && clear 

echo -e "\e[1;32mInfo: oh-my-zsh 安装完成 !"

# import config
cat ./zshrc > $HOME/.zshrc 
echo -e "\e[1;32mInfo: 导入配置成功！\e[0m"

# deploy plugins 
echo -e "\e[1;33mInfo: 正在导入插件\e[0m"
cp plugins ~/.zsh -r

# install powerlevel10k
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install end 
echo -e "\e[1;32mInfo: 配置完成!\ndone." && sleep 1 && clear && exec zsh 
