if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  https://github.com/Arshad-ek2/Dq-auto-ar-bot.git /Dq-auto-ar-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dq-auto-ar-bot
fi
cd /Dq-auto-ar-bot
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
