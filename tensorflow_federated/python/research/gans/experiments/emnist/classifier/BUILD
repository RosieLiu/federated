package(default_visibility = ["//tensorflow_federated/python/research/gans/experiments/emnist:__subpackages__"])

licenses(["notice"])

py_library(
    name = "classifier",
    srcs = ["__init__.py"],
    srcs_version = "PY3",
    deps = [
        ":emnist_classifier_model",
    ],
)

py_library(
    name = "emnist_classifier_model",
    srcs = ["emnist_classifier_model.py"],
    srcs_version = "PY3",
)

py_binary(
    name = "measure_misclassification_of_users",
    srcs = ["measure_misclassification_of_users.py"],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [
        "//tensorflow_federated/python/research/gans/experiments/emnist:emnist_data_utils",
        "//tensorflow_federated/python/research/gans/experiments/emnist/classifier:emnist_classifier_model",
    ],
)

py_binary(
    name = "train_emnist_classifier_model",
    srcs = ["train_emnist_classifier_model.py"],
    data = [
    ],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [
        ":emnist_classifier_model",
        "//tensorflow_federated/python/research/gans/experiments/emnist:emnist_data_utils",
    ],
)
