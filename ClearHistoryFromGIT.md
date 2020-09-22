# Why?

Because sometimes I upload sensitive data and then realise after the push. You can remove it by re-pushing, but its still there :(

# Use

1.  Go to the directory
```sh
cd ~/example
```

1.  Create a "temp" branch
```sh
git checkout --orphan temp_branch
```

1.  Add Files to Branch
```sh
git add -A
git commit -am "Removed history, due to sensitive data"
```

1.  Delete master Branch
```sh
git branch -D master
```

1.  Rename Current Branch
```sh
git branch -m master
```

1.  Push Changes
```sh
git push -f origin master
git remote add origin github.com:markbattistella/{repo}.git
```

## Source
[Stackoverflow](https://stackoverflow.com/a/26000395/1086990)
