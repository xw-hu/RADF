# Recurrently Aggregating Deep Features for Salient Object Detection

by Xiaowei Hu, Lei Zhu, Jing Qin, Chi-Wing Fu, and Pheng-Ann Heng

This implementation is written by Xiaowei Hu at the Chinese University of Hong Kong.

***

## Citation
```
@inproceedings{hu18recurrently,   
  author = {Hu, Xiaowei and Zhu, Lei and Qin, Jing and Fu, Chi-Wing and Heng, Pheng-Ann},    
  title = {Recurrently Aggregating Deep Features for Salient Object Detection},    
  booktitle = {AAAI},    
  pages={6943--6950},         
  year  = {2018}    
}
```

## Saliency Maps   

The results of salient object detection on five datasets (ECSSD, HKU-IS, PASCAL-S, SOD, DUT-OMRON) can be found at [Google Drive](https://drive.google.com/drive/folders/0B8VpfLBo2BeyNWxnMURWNlU0YVE?usp=sharing).



## Installation

*This model is tested on Ubuntu 16.04, CUDA 8.0, cuDNN 5.0   

1. Please download and compile our [CF-Caffe](https://github.com/xw-hu/CF-Caffe).

2. Clone the RADF repository, and we'll call the directory that you cloned as `RADF-master`.

    ```shell
    git clone https://github.com/xw-hu/RADF.git
    ```
    
3. Replace `CF-Caffe/examples/` by `RADF-master/examples/`.
   Replace `CF-Caffe/data/` by `RADF-master/data/`.



## Test
1. Put the pretrained model in `examples/RADF/snapshot/`.

2. Export PYTHONPATH in the command window such as:

   ```shell
   export PYTHONPATH='/path/to/CF-Caffe/python'
   ```
 
3. Make the folder `examples/RADF/result/` and run the test model in `examples/RADF/` (please modify the path of images):
   
   ```shell
   ipython notebook RADF_test.ipynb
   ``` 

4. Apply CRF to do the post-processing for each image.   
   The code for CRF can be found in [https://github.com/Andrew-Qibin/dss_crf](https://github.com/Andrew-Qibin/dss_crf)   
   *Note that please provide a link to the original code as a footnote or a citation if you plan to use it.
  
## Train
1. Download the pre-trained VGG16 model at [http://www.robots.ox.ac.uk/~vgg/research/very_deep/](http://www.robots.ox.ac.uk/~vgg/research/very_deep/).   
   Put this model in `CF-Caffe/models/`

2. Enter the `examples/RADF/`   
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
