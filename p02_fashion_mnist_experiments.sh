
set -e
set -u
set -x

# Question 1 Default settings
python p02_fashion_mnist.py --dataset mnist --epochs 10 --name q1_default
python p02_fashion_mnist.py --dataset fashion_mnist --epochs 10 --name q1_default  --data_dir ../data/q1

# Question 2
python p02_fashion_mnist.py --dataset mnist --epochs 20 --name q1_20_epochs --data_dir ../data/q1
python p02_fashion_mnist.py --dataset fashion_mnist --epochs 20 --name q1_20_epochs --data_dir ../data/q1


# Question 3
python p02_fashion_mnist.py --dataset fashion_mnist --lr 0.1 --name q2_20_epochs --data_dir ../data/q2
python p02_fashion_mnist.py --dataset fashion_mnist --lr 0.001 --name q2_20_epochs --data_dir ../data/q2

# Question 4
python p02_fashion_mnist.py --dataset fashion_mnist --optimizer adam --name q4_adam --data_dir ../data/q4
python p02_fashion_mnist.py --dataset fashion_mnist --optimizer rmsprop --name q4_rmsprop --data_dir ../data/q4


# ...and so on, hopefully you have the idea now.

# TODO You should fill this file out the rest of the way!
