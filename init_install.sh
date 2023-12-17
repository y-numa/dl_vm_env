#aptアップグレード&設定
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get -y install locales
sudo localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

#Python
sudo apt-get install -y python3.9
sudo apt-get install -y python3-pip
export LANG=ja_JP.UTF-8
export LANGUAGE=ja_JP:ja
export LC_ALL=ja_JP.UTF-8
export TERM=xterm
sudo timedatectl set-timezone Asia/Tokyo

#Python　パッケージインストール
pip install --upgrade pip
pip install -U "setuptools<58"

# ベーシックなPythonライブラリ
pip install numpy
pip install pandas
pip install scikit-learn
pip install matplotlib
pip install seaborn
pip install jupyterlab

# 特徴量エンジニアリングで使用
pip install xfeat

# lightgbmでの予測モデル構築時に使用
pip install optuna
pip install lightgbm

# 時系列分析の際に使用（K-Shape etc）
pip install tslearn

# EDAの際に使用
pip install pandas-profiling

#  scikit-learnでモデル構築した際のハイパーパラメータの探索時に使用
pip install scikit-optimize