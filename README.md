# My ZMK Config

## Building

Building the very first time using the `scripts/zmk_build.sh` script:

```bash
just build
```

After that, use the `scripts/zmk_rebuild.sh` script to rebuild the firmware more quickly:

```bash
just rebuild
```

To flash the firmware to the keyboard, use the `flash` command:

```bash
# Left half
just flash left

# Right half
just flash right
```
