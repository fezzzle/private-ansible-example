# private-ansible-example

This is what I use for setting up my dev environment. You can use it too, if you want.

I use arch linux, if you don't use
arch linux you will need to change `roles/packages/tasks` to use whatever 
thing your repo uses for poackage management instead of pacman.

This may not run straight out of box (i.e. if you have a fresh install
without poetry you can't run poetry to install ansible, right?).

If something doesn't run for you and you can fix it, feel free to open a PR.

Intended usage (NB: this is designed to target localhost and I did not
try to run it targeting a remote host)

1. Fork
2. Fill in stuff in vars and vault files
3. Change meta info (like your name) in `pyproject.toml`
4. Fill in item name in ask-vault-pass.sh if you use bitwarden cli for password
5. Install stuff

```
poetry install
poetry run ansible-galaxy install -r requirements.yml
```

6. Encrypt the vault
```
poetry run ansible-vault encrypt group_vars/all/vault.yml
```

7. Run the playbook
```
poetry run ansible-playbook ./setup.yml
```

## Changelog

2021-12-16 Initial version - extract example from what I personally use

