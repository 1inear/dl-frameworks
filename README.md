# Deep Learning Frameworks Intro

This is a repository to show how to create 3 different neural nets using [Keras](https://keras.io), [Pytorch](https://pytorch.org), and [Fastai](https://www.fast.ai) all through Docker containers using Python 3.7.1. 

The models themselves are trained on the widely used [MNIST data set](http://yann.lecun.com/exdb/mnist/) for reconizing handwritten digits, which has effectively become the `hello-world` example for the Machine Learning community. The dataset was released in 1999 with 60000 training images and 10000 test images. At this point the data set and accuracy have been studied enough that we won't spend an inordinate amount of time trying to optimize it, but will hopefully have trained a few separate models that surpass the 98% accuracy threshold.

<p align="center">
  <img src="https://github.com/natelangholz/dl-frameworks/blob/master/images/predicted_mnist.png" />
</p>

There is also a dedicated [Kaggle competition called 'Digit Recognizer'](https://www.kaggle.com/c/digit-recognizer/overview) that has a large commentary and variety of methodologies to improve on this process. 

To get started in any of the frameworks (assuming you have Docker already installed) clone this repo to the directory of your choice:
```
$ git clone https://github.com/natelangholz/dl-frameworks.git
```
or download zip file to the same directory. Then depending on how you want to get started, change your working directory either the `dl-frameworks/keras`, `dl-frameworks/torch`, or `dl-frameworks/fastai` directories. Then build your docker image:
```
$ docker-compose --build up -d
```
To find the location of your jupyter notebook run  (change out `keras` for the specific directory you are in; keras,torch,fastai)
```
$ echo $(docker exec keras_jupyter_1 jupyter notebook list)
```
Copy the outputting link to any browser to find your Jupyter session (for those of you with windows machines you will need to change the 0.0.0.0 IP address with your specific IP).  And, finally once you have ended your session, close your browser and run
```
$ docker-compose down -v
```

### GPU usage

Time permitting this also provides an easy way to show an example of running a Jupyter notebook in Google Colaboratory with free GPU availability, which is then extensible to other more complex machine learning tasks. The Kaggle kernels also allow for free GPU usage but for most people taking their work outside of Kaggle is preferred.



