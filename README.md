[![CircleCI](https://circleci.com/gh/ken-mu/docker-arm-compiler.svg?style=svg)](https://circleci.com/gh/ken-mu/docker-arm-compiler)

# Docker image for ARM Compiler
Docker image for ARM Compiler.

## Quick start

```
docker run -it -e ARMLMD_LICENSE_FILE=[your license server url] -e ARM_TOOL_VARIANT=[your tool variant name] --rm kenmu/arm-compiler
```

## Environment Variables

Following environment variables are mandatory to use this compiler.

* **ARMLMD_LICENSE_FILE** : Set server URL your license file is saved. e.g. `8224@my_server`
* **ARM_TOOL_VARIANT** : Set tool variant name to `mdk_pro_flex` (if a MDK Pro flex license is used)
* **MDK_PACK_NAMES** : Set the list of package names (e.g. MDK_PACK_NAMES="ARM.CMSIS.5.4.0.pack Keil.MDK-Middleware.7.7.0.pack")

## Build Docker image for MDK-ARM

1. Download ARM Compiler from https://developer.arm.com/products/software-development-tools/compilers/arm-compiler/downloads
2. unzip the file and copy `Install` directory to root directory of this repository
3. Download MDK-ARM from http://www2.keil.com/mdk/ and install in the Windows PC
4. Copy `C:\Keil_v[your version]` to root directory of this repository
5. Build docker image as following command:
```
docker build -t kenmu/arm-compiler .
```

## Links

* **DockerHub** : https://hub.docker.com/r/kenmu/arm-compiler/
* **GitHub** : https://github.com/ken-mu/docker-arm-compiler
