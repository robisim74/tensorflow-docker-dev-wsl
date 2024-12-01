import tensorflow as tf

physical_devices = tf.config.list_physical_devices()
print("Physical devices")
print(physical_devices)

print("TensorFlow version:", tf.__version__)
