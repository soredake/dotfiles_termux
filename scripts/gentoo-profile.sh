sudo mkdir /etc/portage/profile
cd /usr/portage/profiles/targets/systemd
SOURCE_DIR="$(cd "$(dirname "$0")" > /dev/null; pwd)";


for d in `ls .`;
do
    ( sudo ln -s $SOURCE_DIR/$d /etc/portage/profile/  )
done
