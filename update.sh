if [[ $1 == "upload" ]]; then
	sudo git add -A
	echo "Input commit content."
	read commit
	sudo git commit -m "$commit"
	sudo proxychains -q git push -u origin master
else
	echo "check https://devmanual.gentoo.org/quickstart/index.html for tips to write ebuild"
	echo "1. update swayimg."
	echo "2. check the latest version of dbeaver on https://dbeaver.io/download/?start&os=linux&arch=x86_64&dist=rpm"
	echo "3. Check the latest release version of sov on https://github.com/milgra/sov/releases."
	echo "4. Check the latest release version of swayimg on https://github.com/artemsen/swayimg/releases."
	echo "5. Check the latest release version of proxychains on https://github.com/rofl0r/proxychains-ng/releases."
fi
