
## gitconfig

```
[alias]
    mr = !sh -c 'git fetch $1 merge-requests/$2/head:mr-$1-$2 && git checkout mr-$1-$2' -
    open = !vim -O `bash ~/git-open.sh`
```

## refer

[git-open](http://blog.amjith.com/git-open-a-small-git-hack)


