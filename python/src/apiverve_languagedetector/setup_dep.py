from setuptools import setup, find_packages

setup(
    name='apiverve_languagedetector',
    version='1.2.6',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Language Detector is a language detection API that identifies the language of text written in Latin, Cyrillic and other alphabetic scripts (Chinese, Japanese, Korean and Greek are not supported). It returns the primary language, its ISO 639-1 code, and candidate matches ranked by confidence scores.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/languagedetector?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
