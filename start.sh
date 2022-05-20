if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ajmal342/EL-DORADOV1.git /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EL-DORADOV1
fi
cd /EL-DORADOV1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
