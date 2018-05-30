# Recurrently Aggregating Deep Features for Salient Object Detection

by Xiaowei Hu, Lei Zhu, Jing Qin, Chi-Wing Fu, and Pheng-Ann Heng

This implementation is written by Xiaowei Hu at the Chinese University of Hong Kong.

***

## Citation
@inproceedings{hu18recurrently,   
&nbsp;&nbsp;&nbsp;&nbsp;  author = {Hu, Xiaowei and Zhu, Lei and Qin, Jing and Fu, Chi-Wing and Heng, Pheng-Ann},              
&nbsp;&nbsp;&nbsp;&nbsp;  title = {Recurrently Aggregating Deep Features for Salient Object Detection},    
&nbsp;&nbsp;&nbsp;&nbsp;  booktitle = {AAAI},    
&nbsp;&nbsp;&nbsp;&nbsp;  year  = {2018}    
}


## Saliency Maps   

The results of salienct object detection on five datasets (ECSSD, HKU-IS, PASCAL-S, SOD, DUT-OMRON) can be found at [Google Drive](https://drive.google.com/drive/folders/0B8VpfLBo2BeyNWxnMURWNlU0YVE?usp=sharing).


## Installation
1. Clone the RADF repository, and we'll call the directory that you cloned RADF into `RADF`.

    ```shell
    git clone https://github.com/xw-hu/RADF.git
    ```

2. Build RADF (based on Caffe)

   *This model is tested on Ubuntu 16.04, CUDA 8.0, cuDNN 5.0   
    
   Follow the Caffe installation instructions here: [http://caffe.berkeleyvision.org/installation.html](http://caffe.berkeleyvision.org/installation.html)   
   
   ```shell
   make all -j XX
   make pycaffe
   ```

## Test
1. Please download our pretrained model at [Google Drive](https://drive.google.com/open?id=0B8VpfLBo2BeybkpYenNMbXNwR1U).   
   Put this model in `RADF/examples/snapshot/`.

2. Export PYTHONPATH in the command window such as:

   ```shell
   export PYTHONPATH='/home/xwhu/RADF/python'
   ```
 
3. Make the folder `RADF/examples/result/` and run the test model in `RADF/examples` (please modify the path of images):
   
   ```shell
   ipython notebook RADF_test.ipynb
   ``` 

4. Apply CRF to do the post-processing for each image.   
   The code for CRF can be found in [https://github.com/Andrew-Qibin/dss_crf](https://github.com/Andrew-Qibin/dss_crf)   
   *Note that please provide a link to the original code as a footnote or a citation if you plan to use it.
  
## Train
1. Download the pre-trained VGG16 model at [http://www.robots.ox.ac.uk/~vgg/research/very_deep/](http://www.robots.ox.ac.uk/~vgg/research/very_deep/).   
   Put this model in `RADF/models/`

2. Enter the `RADF/examples/`   
   Modify the image path in `train_val.prototxt`.

3. Run   
   ```shell
   sh train.sh
   ```

## Useful Links
* [MSRA10k](http://mmcheng.net/msra10k/) : Our training set.
* [Evaluation Code (Windows)](https://github.com/MingMingCheng/CmCode/tree/master/CmLib/Illustration)
* [Evaluation Code (Ubuntu)](https://github.com/Andrew-Qibin/SalMetric)   

&nbsp;&nbsp;&nbsp; *Note that please provide a link to the original code as a footnote or a citation if you plan to use it.
