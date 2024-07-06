## AutoTrain Advanced Pod

This container contains AutoTrain Advanced that works with Kubernetes pods.
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
    JUPYTER_PORT     = 8888 (default)
    ----------------------------------------------

If HF_TOKEN is not set, AutoTrain will not start properly. Same with Jupyter.

## PORTS

- 7860/tcp (AutoTrain UI)
- 8888/tcp (JupyterLab)