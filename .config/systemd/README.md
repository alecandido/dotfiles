# Systemd units

To enable a unit with the user daemon, run:

```sh
systemctl --user enable <my-unit>
```

To check its logs:

```sh
journalctl --user <my-unit>
```

## Refs

https://serverfault.com/a/1128132/517872
