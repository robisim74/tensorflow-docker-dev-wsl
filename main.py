import tensorflow as tf

# Version
print("TensorFlow version: ", tf.__version__)
# Number of available GPUs
print("Num GPUs: ", len(tf.config.list_physical_devices('GPU')))
print(tf.config.list_physical_devices())

# Sample
print(tf.reduce_sum(tf.random.normal([1000, 1000])))
