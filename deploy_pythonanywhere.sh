# remove old version
rm release.zip
rm -r release

# download newest
wget https://github.com/QuestioWo/teleview/releases/download/latest/release.zip

# setup release
unzip release.zip

# setup backend + dependencies
cd release
cp backend/backend/wsgi.py /var/www/
mv /var/www/wsgi.py /var/www/teleview_pythonanywhere_com_wsgi.py
. run_backend.sh n