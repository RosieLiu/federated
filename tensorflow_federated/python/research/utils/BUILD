package(default_visibility = ["//tensorflow_federated:__subpackages__"])

licenses(["notice"])

py_library(
    name = "utils",
    srcs = ["__init__.py"],
    srcs_version = "PY3",
    deps = [
        ":adapters",
        ":checkpoint_manager",
        ":checkpoint_utils",
        ":metrics_manager",
        ":training_loop",
        ":utils_impl",
    ],
)

py_library(
    name = "adapters",
    srcs = ["adapters.py"],
    srcs_version = "PY3",
)

py_library(
    name = "aggregate_fns",
    srcs = ["aggregate_fns.py"],
    srcs_version = "PY3",
    deps = [
        "//tensorflow_federated",
        "//tensorflow_federated/python/common_libs:anonymous_tuple",
    ],
)

py_test(
    name = "aggregate_fns_test",
    srcs = ["aggregate_fns_test.py"],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [
        ":aggregate_fns",
        "//tensorflow_federated",
    ],
)

py_library(
    name = "checkpoint_manager",
    srcs = ["checkpoint_manager.py"],
    srcs_version = "PY3",
)

py_test(
    name = "checkpoint_manager_test",
    srcs = ["checkpoint_manager_test.py"],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [":checkpoint_manager"],
)

py_library(
    name = "checkpoint_utils",
    srcs = ["checkpoint_utils.py"],
    srcs_version = "PY3",
)

py_test(
    name = "checkpoint_utils_test",
    size = "large",
    srcs = ["checkpoint_utils_test.py"],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [":checkpoint_utils"],
)

py_library(
    name = "metrics_manager",
    srcs = ["metrics_manager.py"],
    srcs_version = "PY3",
    deps = [":utils_impl"],
)

py_test(
    name = "metrics_manager_test",
    srcs = ["metrics_manager_test.py"],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [
        ":metrics_manager",
        ":utils_impl",
    ],
)

py_library(
    name = "training_loop",
    srcs = ["training_loop.py"],
    srcs_version = "PY3",
    deps = [
        ":adapters",
        ":checkpoint_manager",
        ":metrics_manager",
        ":utils_impl",
    ],
)

py_test(
    name = "training_loop_test",
    size = "large",
    srcs = ["training_loop_test.py"],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [
        ":adapters",
        ":checkpoint_manager",
        ":metrics_manager",
        ":training_loop",
        "//tensorflow_federated",
    ],
)

py_library(
    name = "training_utils",
    srcs = ["training_utils.py"],
    srcs_version = "PY3",
    deps = ["//tensorflow_federated"],
)

py_test(
    name = "training_utils_test",
    size = "large",
    srcs = ["training_utils_test.py"],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [
        ":training_utils",
        "//tensorflow_federated",
    ],
)

py_library(
    name = "utils_impl",
    srcs = ["utils_impl.py"],
    srcs_version = "PY3",
)

py_test(
    name = "utils_impl_test",
    srcs = ["utils_impl_test.py"],
    python_version = "PY3",
    srcs_version = "PY3",
    deps = [":utils_impl"],
)
