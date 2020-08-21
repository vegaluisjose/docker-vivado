# Run Xilinx Vivado inside Docker

## Build instructions

1. Create an account in [Xilinx](https://www.xilinx.com/registration/create-account.html)
2. Download Vivado web installer e.g., for `2020.1` it would be `Xilinx_Unified_2020.1_0602_1208_Lin64.bin`
3. Move `Xilinx_Unified_2020.1_0602_1208_Lin64.bin` to the root folder of this repository
4. Make sure docker image size limit is greater than 90GBs. The final image is about 35GBs.
5. Run `./credential.sh` script for creating auth token and install config. This step should generate a `wi_authentication_key` and `install_config.txt` file. Select option 2 in product list and 1 in edition list when prompted for installing the free edition of Vivado (WebPACK).
6. Run `./install.sh` script to install vivado

## Docker images

There are two images built using the above scripts, one called `vivado-credential` for pulling credentials and another one called `vivado` that will have Vivado installed.

## Testing

Tried with:
* macOS Catalina (10.15.6) with Docker 19.03.12
* Ubuntu 18.04 with Docker 19.03.12

### Printing Vivado version

```bash
cd examples/version && make
```

### Running Vivado simulation

```bash
cd examples/sim && make
```

## Installing Vivado in batch mode

More information about installing Vivado in batch mode can be found in the following [guide](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2020_1/ug973-vivado-release-notes-install-license.pdf).
