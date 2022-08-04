DISCONTINUATION OF PROJECT.

This project will no longer be maintained by Intel.

Intel has ceased development and contributions including, but not limited to, maintenance, bug fixes, new releases, or updates, to this project. 

Intel no longer accepts patches to this project.

If you have an ongoing need to use this project, are interested in independently developing it, or would like to maintain patches for the open source software community, please create your own fork of this project. 
# intel-camera-drivers

_intel-camera-drivers_ contains the following components:

## drivers

Camera drivers including drivers for Imaging processing unit, camera sensors and VCM driver.

Supported combinations currently are:
* imx214+dw9714
* ov5670

## include

Necessary include files

# usage

To be used together with https://github.com/01org/meta-intel-camera
layer.

See https://github.com/01org/meta-intel-camera for more information.

# build

bitbake camera-drivers


