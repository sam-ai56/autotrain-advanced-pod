## AutoTrain Advanced Pod

This repository contains a Dockerfile for AutoTrain Advanced to run with Kubernetes pods.
Also along with AutoTrain comes JupyterLab.

## Useful Links
* [GitHub Repo](https://github.com/sam-ai56/autotrain-advanced-pod)
* [AutoTrain Repo](https://github.com/huggingface/autotrain-advanced)
* [Find HF_TOKEN](https://huggingface.co/settings/tokens)

## ENV
    ----------------------------------------------
    HF_TOKEN         = (YOUR HUGGINGFACE TOKEN) !!
    JUPYTER_PASSWORD = (PASSWORD)               !
    ----------------------------------------------
    AUTOTRAIN_PORT   = 7860 (default)
    JUPITER_PORT     = 8888 (default)
    ----------------------------------------------

If HF_TOKEN is not set, AutoTrain will not start properly. Same with Jupyter.

## PORTS

- 7860/tcp (AutoTrain UI)
- 8888/tcp (JupiterLab)

<!-- ### runpod.yaml

Each container foulder needs to have a runpod.yaml file. This file will contain version info as well as services to be ran. The runpod.yaml file should be formatted as follows:

```yaml
version: '1.0.0'
services:
  - name: 'service1'
    port: 9000
    proxy_port: 9001
  - name: 'service2'
    port: 9002
    proxy_port: 9003
``` -->

## Building Container

buildx bake

```BASH
cd container

docker buildx bake

docker buildx bake --push
```

docker build should be ran from the root of the repository, not from the container folder. The build command should be ran as follows:

```bash
docker build -t r4mnd/<container-name>:<version> -f <container-name>/Dockerfile .
```

<!-- #### This repo is fork of [runpod/containers](https://github.com/runpod/containers) under the MIT license -->
