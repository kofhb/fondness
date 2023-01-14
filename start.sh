if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GoodLove1/fondness.git /Anurag-Extra-Features
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Anurag-Extra-Features
fi
cd /Anurag-Extra-Features
pip3 install -U -r requirements.txt
echo "Starting FONDNESS....🔥"
gunicorn app:app & python3 bot.py
