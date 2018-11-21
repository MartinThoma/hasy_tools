[![PyPI version](https://badge.fury.io/py/hasy_tools.svg)](https://badge.fury.io/py/hasy_tools)
[![Python Support](https://img.shields.io/pypi/pyversions/hasy_tools.svg)](https://pypi.org/project/hasy_tools/)

# hasy_tools

`hasy_tools` is a support package for the HASY dataset. The dataset is
described in [The HASYv2 dataset](https://arxiv.org/pdf/1701.08380.pdf).

The HASY dataset contains handwritten symbols obtained via [Detexify](http://detexify.kirelabs.org/classify.html)
and [write-math.com](http://write-math.com). The data was rendered and is similar
to MNIST.


## Installation

```bash
$ pip install git+https://github.com/MartinThoma/hasy_tools.git
```

It can, of course, also be installed via PyPI.


## Usage

```python
>>> import hasy_tools
>>> data = hasy_tools.load()
>>> data.keys()
dict_keys(['x_train', 'y_train', 'x_test', 'y_test', 's_train', 's_test', 'labels'])
>>> len(data['labels'])
369
>>> data['x_train'].shape
(151241, 32, 32, 1)
>>> x_train = hasy_tools.preprocess(data['x_train'])
>>> y_train = np.eye(hasy_tools.n_classes)[y_train.squeeze()]
```
