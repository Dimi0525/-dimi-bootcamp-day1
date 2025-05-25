from setuptools import setup, find_packages

setup(
    name="dimi_bootcamp_day1",
    version="0.1.0",
    packages=find_packages(),
    entry_points={
        "console_scripts": [
            "dimi-greet = main:main",
        ],
    },
    python_requires=">=3.6",
)
