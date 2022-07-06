# set git
git config --global init.defaultBranch "main"
git config --global pull.rebase true
# git gpg sign ($GPG_KEY $GPG_ID)
gpg --batch --import <(echo $GPG_KEY | base64 -d)
git config --global user.signingkey "$GPG_ID"
git config --global commit.gpgsign true
