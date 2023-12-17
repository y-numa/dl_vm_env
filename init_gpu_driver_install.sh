# 初期設定
sudo apt install gcc
sudo apt install make

sudo apt update -y
sudo apt upgrade -y
sudo apt install build-essential linux-headers-$(uname -r)


# NVIDIA GPUドライバーのインストール
# 下記リンクから適切なバージョンを選択し、リンクを取得
# https://www.nvidia.co.jp/Download/index.aspx?lang=jp 
wget https://us.download.nvidia.com/tesla/535.129.03/nvidia-driver-local-repo-ubuntu2004-535.129.03_1.0-1_amd64.deb
sudo apt install nvidia-driver-535 -y

# CUDA Toolkitのインストール
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-3

sudo apt-get install -y cuda-drivers
sudo apt-get install -y nvidia-kernel-open-545
sudo apt-get install -y cuda-drivers-545
sudo apt install nvidia-cuda-toolkit

# 下記を「~/.bashrc」の最後に追加
# export PATH="/usr/local/cuda/bin:$PATH"
# export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
source ~/.bashrc

# cuDNNのインストール
# Login処理が必要なため下記リンクからダウンロードし、アップロードすることで対応
# https://developer.nvidia.com/rdp/cudnn-download


sudo dpkg -i cudnn-local-repo-ubuntu2004-8.9.7.29_1.0-1_amd64.deb
sudo cp /var/cudnn-local-repo-ubuntu2004-8.9.7.29/cudnn-local-30472A84-keyring.gpg /usr/share/keyrings/
sudo apt-get update

# PtTorchのインストール
sudo apt-get install -y python3-pip
pip install torch torchvision torchaudio