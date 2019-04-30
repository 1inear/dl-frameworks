#!/bin/sh
echo $(docker exec torch_jupyter_1 jupyter notebook list)
