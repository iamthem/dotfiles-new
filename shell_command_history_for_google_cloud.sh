: 1685726760:0;wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.3.1-0-Linux-x86_64.sh
: 1685726760:0;vim /etc/environment
: 1685726760:0;sudo vim /etc/environment
: 1685726760:0;lspci | grep VGS
: 1685726760:0;lspci | grep VGA
: 1685726760:0;lspci | grep NVIDIA
: 1685726760:0;sudo apt-get install gcc-12
: 1685726760:0;sudo vim /etc/environment 
: 1685726760:0;vim /var/log/cuda-installer.log 
: 1685726760:0;sudo apt install build-essential
: 1685726760:0;source /etc/environment 
: 1685726760:0;sudo sh cuda_11.8.0_520.61.05_linux.run
: 1685726760:0;ls .ssh/
: 1685726760:0;cd ../ssh
: 1685726760:0;cd .ssh/
: 1685726760:0;mv ssh_google_a100/* .
: 1685726760:0;rm -r ssh_google_a100/
: 1685726760:0;cd ../
: 1685726760:0;git clone git@github.com:NVIDIA/cuda-samples.git
: 1685726760:0;cd cuda-samples/
: 1685726760:0;cd Samples/
: 1685726760:0;cd 0_Introduction/
: 1685726760:0;make
: 1685726760:0;cd matrixMul
: 1685726760:0;make 
: 1685726760:0;./matrixMul 
: 1685726760:0;cd .
: 1685726760:0;cd 
: 1685726760:0;wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run
: 1685726760:0;chmod Miniconda3-py310_23.3.1-0-Linux-x86_64.sh
: 1685726760:0;chmod +x Miniconda3-py310_23.3.1-0-Linux-x86_64.sh
: 1685726760:0;./Miniconda3-py310_23.3.1-0-Linux-x86_64.sh 
: 1685726760:0;source ~/.bashrc 
: 1685726760:0;conda create -n "rl-june23" python=3.10 pytorch torchvision torchaudio tensorflow pytorch-cuda=11.8 -c pytorch -c nvidia
: 1685726760:0;sudo apt-get install xclip
: 1685726760:0;sudo apt-get update -y
: 1685726760:0;sudo apt-get install xclip universal-ctags ripgrep zip 
: 1685726760:0;sudo apt install nodejs npm
: 1685726760:0;rm cudnn-linux-x86_64-8.7.0.84_cuda11-archive
: 1685726760:0;rm -rf cudnn-linux-x86_64-8.7.0.84_cuda11-archive*
: 1685726760:0;history | grep tar
: 1685726760:0;tar -xvf cudnn-linux-x86_64-8.7.0.84_cuda11-archive.tar.xz 
: 1685726760:0;sudo cp cudnn-linux-x86_64-8.7.0.84_cuda11-archive/include/cudnn*.h /usr/local/cuda/include
: 1685726760:0;sudo cp -P cudnn-*-archive/lib/libcudnn* /usr/local/cuda/lib64
: 1685726760:0;sudo cp -P cudnn-linux-x86_64-8.7.0.84_cuda11-archive/lib/libcudnn* /usr/local/cuda/lib64
: 1685726760:0;ls -l /usr/local/cuda
: 1685726760:0;ls /usr/local/cuda-11.8/lib64/
: 1685726760:0;ls /usr/local/cuda-11.8/bin/
: 1685726406:0;sudo apt uninstall nodejs npm
: 1685726412:0;sudo apt-get uninstall nodejs npm
: 1685726415:0;sudo apt-get remove nodejs npm
: 1685726432:0;curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&\sudo apt-get install -y nodejs
: 1685726548:0;sudo apt-get remove libnode-dev
: 1685726590:0;rm rf /usr/share/systemtap/tapset/node.stp
: 1685726594:0;sudo rm rf /usr/share/systemtap/tapset/node.stp
: 1685726599:0;sudo rm -rf /usr/share/systemtap/tapset/node.stp
: 1685726602:0;curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - &&\sudo apt-get install -y nodejs
: 1685726696:0;sudo apt-get remove libnode72
: 1685726704:0;sudo apt-get update
: 1685726709:0;curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\sudo apt-get install -y nodejs
: 1685726726:0;npm install -g neovim
: 1685726744:0;sudo npm install -g neovim
: 1685726754:0;cd -1
: 1685726847:0;pip install pynvim --upgrade
: 1685726863:0;cd ~/.local/share/nvim/
: 1685726867:0;mkdir shada
: 1685726871:0;cd shada
: 1685726877:0;tourch main.shada
: 1685726985:0;ls ~/miniconda3/envs/rl-june23/bin/python
: 1685727018:0;vim 00-plugins.vim
: 1685727064:0;s
: 1685727068:0;cd .config/nvim
: 1685727085:0;pip install ipython
: 1685727093:0;vim plugins.lua
: 1685728346:0;vim ~/.zsh_history
: 1685725877:0;sudo apt install fzf
: 1685725895:0;source .zshrc
: 1685725936:0;sudo cp squashfs-root/usr/bin/nvim /usr/bin/nvim
: 1685725939:0;vim ~/.zshrc
: 1685725989:0;cp -r dotfiles-new/.config .
: 1685726015:0;mkdir ~/.cache/zsh/dirs
: 1685726022:0;cd ~/.cache
: 1685726026:0;mkdir zsh
: 1685726029:0;cd zsh
: 1685726031:0;mkdir dirs
: 1685726039:0;cd .config
: 1685726043:0;cd nvim
: 1685726047:0;vim .
: 1685726090:0;cat 00-plugins.vim
: 1685726094:0;nvim 00-plugins.vim
: 1685726127:0;sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \\
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
: 1685726196:0;sudo apt install lua5.3
: 1685726207:0;cd sources.d
: 1685726275:0;history | grep node
: 1685728400:0;cp ~/.zsh_history ~/dotfiles-new
: 1685728403:0;cd ~/dotfiles-new
: 1685728428:0;mv .zsh_history shell_command_history_for_google_cloud.txt
: 1685728431:0;vim shell_command_history_for_google_cloud.txt
: 1685728448:0;mv shell_command_history_for_google_cloud.txt shell_command_history_for_google_cloud.sh
: 1685728450:0;vim shell_command_history_for_google_cloud.sh
: 1685728510:0;cd
: 1685728510:0;ls
: 1685729445:0;cd
: 1685729445:0;ls
: 1685729447:0;mkdir ray_results
: 1685729448:0;ls
: 1685729460:0;df -h
: 1685729520:0;ls
: 1685731792:0;git clone git@github.com:iamthem/FinRL-Meta-Fork.git
: 1685731808:0;cd FinRL-Meta-Fork
: 1685731808:0;ls
: 1685731826:0;git switch lambda-backtest-branch
: 1685731831:0;ls
: 1685731840:0;mkdir results
: 1685731841:0;ls
: 1685731844:0;rm -rf results
: 1685731845:0;ls
: 1685731910:0;unzip results.zip
: 1685731911:0;ls
: 1685731913:0;cd results
: 1685731914:0;ls
: 1685731936:0;rm 2023-05-2616:40:51.xlsx 2023-05-2618:52:06.xlsx
: 1685731937:0;ls
: 1685731940:0;vim backtest_pickles
: 1685731944:0;cd ../
: 1685731945:0;ls
: 1685731960:0;mkdir logs
: 1685731960:0;ls
: 1685731971:0;ctags -R
: 1685731973:0;vim fin
: 1685731976:0;vim finrl.vim
: 1685732206:0;tar xvfz prometheus-2.44.0.linux-amd64.tar.gz
: 1685732267:0;sudo apt-get install -y adduser libfontconfig1
: 1685732273:0;wget https://dl.grafana.com/enterprise/release/grafana-enterprise_9.5.2_amd64.deb
: 1685732277:0;sudo dpkg -i grafana-enterprise_9.5.2_amd64.deb
: 1685732314:0;ls /usr/share/grafana
: 1685732317:0;ls
: 1685732342:0;cd dotfiles-new
: 1685732344:0;git fetch
: 1685732347:0;ls
: 1685732354:0;git log
: 1685732358:0;git status
: 1685732408:0;git pull
: 1685732434:0;cp ~/.zsh_history ~/dotfiles-new
: 1685732441:0;cp ~/.zsh_history ~/dotfiles-new/shell_command_history_for_google_cloud.sh
