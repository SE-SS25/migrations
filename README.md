# Setup
## Add to repo

```shell
git submodule add git@github.com:SE-SS25/migrations.git
```

## Initializing

This means, you have the submodule tracked, but not on disk (for example after you cloned)

```shell
git submodule update --init -- migrations
```

## Update

```shell
cd migrations/
git pull
```

## Notes

You probably have to checkout master often
