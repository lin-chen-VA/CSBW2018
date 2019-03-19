# Histogram-based Outlier Score (HBOS)

## Introduction

> To recognize the anomalous residues in the proteins solved by Cryo-EM, we designed an unsupervised model based on histogram plots of features from different types of residues.

> singleChain.py, for each residue in the first chain of a protein, calculate side-chain distance, phi, psi, and chi1
> The code was used to collect the raw data from both X-ray dataset and EM dataset

> anomaly.py, to calculate HBOS score for each residue in the first chain of a protein
> The code was used to calcualte HBOS and COMP scores with the processed histogram plots generated from singleChain.py

> NCSChain.py, same as singleChain.py, except for using chains which have similarity lower than 95%  other chains in the same protein. The use of NCS chains is the suggestion from a revewer of Molecule for a paper we published in 2018

> NCSAnomaly.py, same as anomaly.py, except for using chains which has similarity lower than 95% as other chains in the same protein.

> detection.py, code used to detect anomalies, the cutoff is 10 according to the study we published

## Implementation

* The code was written in Python 2.7 environment

* python -W detection.py samples Analysis, for general anomaly detection
* samples, the directory containing cif protein files
* Analysis, the directory ctonaining the histogram data generated from the reference X-ray dataset

## Reference

* [L. Chen, J. He, Using Combined Features to Analyze Atomic Structures derived from Cryo-EM Density Maps, ACM-BCB 2018](https://dl.acm.org/citation.cfm?doid=3233547.3233709)
