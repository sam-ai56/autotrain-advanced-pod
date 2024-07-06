variable "PUBLISHER" {
    default = "r4mnd"
}

group "default" {
    targets = [
        ### CUDA ###
        "cuda11",
        "cuda12",

        ### ROCM ###
        # ROCM 5.6
        #"201-py38-rocm56-ubuntu2004",
        # ROCM 5.7
        #"201-py310-rocm57-ubuntu2204",
        # ROCM 6.0
        #"211-py39-rocm60-ubuntu2004",
        # ROCM 6.0.2
        #"212-py310-rocm602-ubuntu2204",
        # ROCM 6.1
        #"201-py39-rocm61-ubuntu2004",
        #"212-py310-rocm61-ubuntu2204",
        # ROCM 6.1.2
        #"201-py39-rocm612-ubuntu2004",
        #"212-py310-rocm612-ubuntu2204",
    ]
}

#group "rocm" {
#    targets = [
#        "201-py38-rocm56-ubuntu2004",
#        "201-py310-rocm57-ubuntu2204",
#        "211-py39-rocm60-ubuntu2004",
#        "212-py310-rocm602-ubuntu2204",
#        "201-py39-rocm61-ubuntu2004",
#        "212-py310-rocm61-ubuntu2204",
#    ]
#}

group "cuda" {
    targets = [
        "cuda11",
        "cuda12",
    ]
}

target "cuda11" {
    dockerfile = "Dockerfile"
    tags = ["${PUBLISHER}/autotrain-advanced-pod:cuda11"]
    contexts = {
        scripts = "../container-template"
        logo = "../container-template"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-devel-ubuntu22.04"
        PYTHON_VERSION = "3.10"
        TORCH = "torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://download.pytorch.org/whl/cu118"
    }
}

target "cuda12" {
    dockerfile = "Dockerfile"
    tags = ["${PUBLISHER}/autotrain-advanced-pod:cuda12"]
    contexts = {
        scripts = "../container-template"
        logo = "../container-template"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:12.5.0-devel-ubuntu22.04"
        PYTHON_VERSION = "3.10"
        TORCH = "torch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1"
    }
}

# ROCM

#target "201-py38-rocm56-ubuntu2004" {
#    dockerfile = "Dockerfile"
#    tags = ["${PUBLISHER}/autotrain-advanced-pod:2.0.1-py3.8-rocm5.6-ubuntu20.04"]
#    contexts = {
#        scripts = "../container-template"

#        logo = "../container-template"
#    }
#    args = {
#        BASE_IMAGE = "rocm/autotrain-advanced-pod:rocm5.6_ubuntu20.04_py3.8_pytorch_2.0.1"
#    }
#}

#target "201-py310-rocm57-ubuntu2204" {
#    dockerfile = "Dockerfile"
#    tags = ["${PUBLISHER}/autotrain-advanced-pod:2.0.1-py3.10-rocm5.7-ubuntu22.04"]
#    contexts = {
#        scripts = "../container-template"

#        logo = "../container-template"
#    }
#    args = {
#        BASE_IMAGE = "rocm/autotrain-advanced-pod:rocm5.7_ubuntu22.04_py3.10_pytorch_2.0.1"
#    }
#}

#target "212-py310-rocm602-ubuntu2204" {
#    dockerfile = "Dockerfile"
#    tags = ["${PUBLISHER}/autotrain-advanced-pod:2.1.2-py3.10-rocm6.0.2-ubuntu22.04"]
#    contexts = {
#        scripts = "../container-template"

#        logo = "../container-template"
#    }
#    args = {
#        BASE_IMAGE = "rocm/autotrain-advanced-pod:rocm6.0.2_ubuntu22.04_py3.10_pytorch_2.1.2"
#    }
#}


#target "211-py39-rocm60-ubuntu2004" {
#    dockerfile = "Dockerfile"
#    tags = ["${PUBLISHER}/autotrain-advanced-pod:2.1.1-py3.9-rocm6.0-ubuntu20.04"]
#    contexts = {
#        scripts = "../container-template"

#        logo = "../container-template"
#    }
#    args = {
#        BASE_IMAGE = "rocm/autotrain-advanced-pod:rocm6.0_ubuntu20.04_py3.9_pytorch_2.1.1"
#    }
#}

#target "201-py39-rocm61-ubuntu2004" {
#    dockerfile = "Dockerfile"
#    tags = ["${PUBLISHER}/autotrain-advanced-pod:2.0.1-py3.9-rocm6.1-ubuntu20.04"]
#    contexts = {
#        scripts = "../container-template"

#        logo = "../container-template"
#    }
#    args = {
#        BASE_IMAGE = "rocm/autotrain-advanced-pod:rocm6.1_ubuntu20.04_py3.9_pytorch_2.0.1"
#    }
#}

#target "212-py310-rocm61-ubuntu2204" {
#    dockerfile = "Dockerfile"
#    tags = ["${PUBLISHER}/autotrain-advanced-pod:2.1.2-py3.10-rocm6.1-ubuntu22.04"]
#    contexts = {
#        scripts = "../container-template"

#        logo = "../container-template"
#    }
#    args = {
#        BASE_IMAGE = "rocm/autotrain-advanced-pod:rocm6.1_ubuntu22.04_py3.10_pytorch_2.1.2"
#    }
#}

#target "201-py39-rocm612-ubuntu2004" {
#    dockerfile = "Dockerfile"
#    tags = ["${PUBLISHER}/autotrain-advanced-pod:2.0.1-py3.9-rocm6.1.2-ubuntu20.04"]
#    contexts = {
#        scripts = "../container-template"

#        logo = "../container-template"
#    }
#    args = {
#        BASE_IMAGE = "rocm/autotrain-advanced-pod:rocm6.1.2_ubuntu20.04_py3.9_pytorch_release-2.0.1"
#    }
#}

#target "212-py310-rocm612-ubuntu2204" {
#    dockerfile = "Dockerfile"
#    tags = ["${PUBLISHER}/autotrain-advanced-pod:2.1.2-py3.10-rocm6.1.2-ubuntu22.04"]
#    contexts = {
#        scripts = "../container-template"

#        logo = "../container-template"
#    }
#    args = {
#        BASE_IMAGE = "rocm/autotrain-advanced-pod:rocm6.1.2_ubuntu22.04_py3.10_pytorch_release-2.1.2"
#    }
#}