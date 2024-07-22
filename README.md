# Key config

My configuration for the Kenesis Advantage 360 Professional. Yep, you heard it right, I'm a keyboard nerd.

## Downloading the latest firmware from GitHub

```bash
gh run download -n firmware --dir firmware
```

## Building firmware locally

1. Execute `make`.
2. Check the `firmware` directory for the latest firmware build.

### Flash firmware

Resources can be found on Kinesis.com

- https://kinesis-ergo.com/support/kb360pro/#firmware-updates
- https://kinesis-ergo.com/support/kb360pro/#manuals

## Troubleshooting

### Cannot connect bluetooth profile to new computer

If switching which computer the keyboard is connected to for a given bluetooth profile, you need to use
the bluetooth clear key to clear the profile to allow it to be connected to a new device. You can do this
by pressing `mod+ctrl` on the left half. The physical key labels are `kp` and `control` respectively.
