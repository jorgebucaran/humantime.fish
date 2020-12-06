# humantime.fish

> Turn milliseconds into a human-readable string in [Fish](https://fishshell.com).

You have the time in milliseconds and want to turn it into a human-readable string like "3h 14m 15s".

```fish
$ sleep 1
$ humantime $CMD_DURATION
1s 5ms
```

> **Tip**: `$CMD_DURATION` is set by Fish to the running time of the last command in milliseconds.

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```console
fisher install jorgebucaran/humantime.fish
```

## License

[MIT](LICENSE.md)
