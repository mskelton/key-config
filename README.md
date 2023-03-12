# Key config

My configuration for the Kenesis Advantage 360 Professional. Yep, you heard it right, I'm a keyboard nerd.

## Downloading the latest firmware from GitHub

```bash
gh run download -n firmware --dir firmware
```

## Building firmware locally

### First run

1. Execute `make`.
2. Check the `firmware` directory for the latest firmware build.

### Subsequent runs

If the only file you have changed is `config/adv360.keymap`, execute `make build` and check the `firmware` directory for the latest firmware build.

If you have changed other files in the `config` directory (such as `config/west.yml`) you will need to execute `make all` to rebuild the Docker image as well as the firmware.

### Flash firmware

Resources can be found on Kinesis.com
https://kinesis-ergo.com/support/kb360pro/#firmware-updates
https://kinesis-ergo.com/support/kb360pro/#manuals
