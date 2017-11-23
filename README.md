# Recurrently Aggregating Deep Features for Salient Object Detection

by Xiaowei Hu, Lei Zhu, Jing Qin, Chi-Wing Fu, and Pheng-Ann Heng

This implementation is written by Xiaowei Hu at the Chinese University of Hong Kong.

***

## Citation
@inproceedings{hu18recurrently,   
&nbsp;&nbsp;&nbsp;&nbsp;  author = {Xiaowei Hu and Lei Zhu and Jing Qin and Chi-Wing Fu and Pheng-Ann Heng},    
&nbsp;&nbsp;&nbsp;&nbsp;  title = {Recurrently Aggregating Deep Features for Salient Object Detection},    
&nbsp;&nbsp;&nbsp;&nbsp;  booktitle = {AAAI},    
&nbsp;&nbsp;&nbsp;&nbsp;  year  = {2018}    
}


## Installation
1. Clone the RADF repository, and we'll call the directory that you cloned RADF into `RADF`.

&nbsp;&nbsp;&nbsp;&nbsp; ```git clone https://github.com/xw-hu/RADF.git```

2. Build RADF (based on Caffe)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *This model is tested on Ubuntu-16.04 CUDA-8.0 cuDNN-5.0

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ```# Follow the Caffe installation instructions here:   # http://caffe.berkeleyvision.org/installation.html   In Makefile.config:  uncomment WITH_PYTHON_LAYER := 1```  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ```make all -j XX```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ```make pycaffe```
