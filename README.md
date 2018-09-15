# isucon-docker

Docker container for ISUCON. 

# Development Environment

## Tools

- bash
- neovim
- netdata

# Authorized keys

公開鍵を作って`public_keys`以下に入れる．`.pub`拡張子にしておくこと．

```bash
$ ssh-keygen -t rsa -b 4096 -C "example@example.com"
```

手元に置く秘密鍵は`isucon`として`$HOME/.ssh`以下に置く
