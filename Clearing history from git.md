# Why?
Because sometimes I upload sensitive data and then realise after the push. You can remove it by repushing, but its still there :(

# Use
1. Go to the directory
```sh
cd ~/example
```

1. Delete the `.git` folder
```sh
rm -rf .git
```

1. Initialise a new repo
```sh
git init
git add .
git commit -m "Removed history, due to sensitive data"
```

1. Push to remote
```sh
git remote add origin github.com:markbattistella/{repo}.git
git push -u --force origin master
```
