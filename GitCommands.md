# Check the configured repos
```
git remote -v

# origin https://github.com/markbattistella/[repoName].git (fetch)
# origin https://github.com/markbattistella/[repoName].git (push)
# upstream https://github.com/[originalOwner]/[repoName].git (fetch)
# upstream https://github.com/[originalOwner]/[repoName].git (push)
```

# Merge the original into the fork

## Fetch the latest from the original repo
```
git fetch upstream
```

## Checkout your main repo
```
git checkout master
```

## Merge the upstream main repo into the fork main repo
```
git merge upstream/master
```

## Merge issues

Use the `mergetool` then choose which to keep.

```
git mergetool
```
