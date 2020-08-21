# Run Xilinx Vivado inside Docker

## Build instructions

1. Create an account in [Xilinx](https://www.xilinx.com/registration/create-account.html)
2. Download Vivado web installer e.g., for `2020.1` it would be `Xilinx_Unified_2020.1_0602_1208_Lin64.bin`
3. Move `Xilinx_Unified_2020.1_0602_1208_Lin64.bin` to the root folder of this repository
4. Run `./credential.sh` script for creating auth token and install config. This step should generate a `wi_authentication_key` and `install_config.txt` file. Select option 2 in product list and 1 in edition list when prompted for installing the free edition of Vivado (WebPACK).
5. Run `./install.sh` script to install vivado

## Docker images

There are two `Dockerfile`, one image called `vivado-credential` for pulling credentials and another image called `vivado` that will have Vivado installed.

## Testing

* Run `docker run -i -t -v "$(pwd)":/workspace "vivado" /bin/bash -c /workspace/example.sh`

## Installing Vivado in batch mode

More information about installing Vivado in batch mode can be found in the following [guide](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2020_1/ug973-vivado-release-notes-install-license.pdf).
