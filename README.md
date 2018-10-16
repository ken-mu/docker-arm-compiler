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

## Links

* **DockerHub** : https://hub.docker.com/r/kenmu/arm-compiler/
* **GitHub** : https://github.com/ken-mu/docker-arm-compiler
