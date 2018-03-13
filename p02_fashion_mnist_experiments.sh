
set -e
set -u
set -x

# Question 1 Default settings
python p02_fashion_mnist.py --dataset mnist --epochs 10 --name q1_default
python p02_fashion_mnist.py --dataset fashion_mnist --epochs 10 --name q1_default  --data_dir ../data/q1

# Question 2
python p02_fashion_mnist.py --dataset mnist --epochs 20 --name q1_20_epochs --data_dir ../data/q2
python p02_fashion_mnist.py --dataset fashion_mnist --epochs 20 --name q1_20_epochs --data_dir ../data/q2


# Question 3
python p02_fashion_mnist.py --dataset fashion_mnist --lr 0.1 --name q3_0.1 --data_dir ../data/q3
python p02_fashion_mnist.py --dataset fashion_mnist --lr 0.001 --name q_0.001 --data_dir ../data/q3

# Question 4
python p02_fashion_mnist.py --dataset fashion_mnist --optimizer adam --name q4_adam --data_dir ../data/q4
python p02_fashion_mnist.py --dataset fashion_mnist --optimizer rmsprop --name q4_rmsprop --data_dir ../data/q4

#Question 5
python p02_fashion_mnist.py --dataset fashion_mnist --name q5_dr0  --dropout-rate 0 --data_dir ../data/q5
python p02_fashion_mnist.py --dataset fashion_mnist --name q5_dr25 --dropout-rate 0.25  --data_dir ../data/q5
python p02_fashion_mnist.py --dataset fashion_mnist --name q5_dr90 --dropout-rate 0.90 --data_dir ../data/q5
python p02_fashion_mnist.py --dataset fashion_mnist --name q5_dr100 --dropout-rate 1 --data_dir ../data/q5

#Question 6
python p02_fashion_mnist.py --dataset fashion_mnist --name q6_bs_0.125 --batch-size 32 --data_dir ../data/q6
python p02_fashion_mnist.py --dataset fashion_mnist --name q6_bs_8 --batch-size 2048 --data_dir ../data/q6

#Question 7
python p02_fashion_mnist.py --dataset fashion_mnist --name q7_P2Q7HalfChannelsNet --model P2Q7HalfChannelsNet --data_dir ../data/q7
python p02_fashion_mnist.py --dataset fashion_mnist --name q7_P2Q7DoubleChannelsNet --model P2Q7DoubleChannelsNet --data_dir ../data/q7

#Question 8
python p02_fashion_mnist.py --dataset fashion_mnist --name q8_P2Q8BatchNormNet --model P2Q8BatchNormNet --data_dir ../data/q8

#Question 9
python p02_fashion_mnist.py --dataset fashion_mnist --name q9_P2Q9DropoutNet --model P2Q9DropoutNet --data_dir ../data/q9

#Question 10
python p02_fashion_mnist.py --dataset fashion_mnist --name q10_P2Q10DropoutBatchnormNet --model P2Q10DropoutBatchnormNet --data_dir ../data/q10

#Question 11
python p02_fashion_mnist.py --dataset fashion_mnist --name q11_extraconv --data_dir ../data/fashion_mnist --model P2Q11ExtraConvNet

#Question 12
python p02_fashion_mnist.py --dataset fashion_mnist --name q12_rmlayer --data_dir ../data/fashion_mnist --model P2Q12RemoveLayerNet

#Question 13
python p02_fashion_mnist.py --dataset fashion_mnist --name q13 --data_dir ../data/fashion_mnist --model P2Q13UltimateNet --batch-size 128 --epochs 10 --optimizer adam

#Question 14
python p02_fashion_mnist.py --dataset mnist --name q14 --data_dir ../data/mnist --load_model q13_save.modelq13 --model P2Q13UltimateNet --batch-size 128 --epochs 10 --optimizer adam --no-train

# Question 15
python p02_fashion_mnist.py --dataset mnist --name q15 --data_dir ../data/mnist --load_model q13_save.modelq13 --model P2Q13UltimateNet --batch-size 128 --epochs 10 --optimizer adam
