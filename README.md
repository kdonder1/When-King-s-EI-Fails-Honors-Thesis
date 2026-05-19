# WHEN KING'S ECOLOGICAL INFERENCE FAILS: DIAGNOSING THE SMALL-N PROBLEM IN DATA-SPARSE ENVIRONMENTS USING MOUNT PLEASANT ELECTION DATA
## Kristina Donders
## Binghamton University, 2026

This thesis examines the small-N limitation in Gary King’s Ecological Inference (EI) model and explores how data structure and noise affect model convergence in data-sparse environments. Ecological inference is commonly used in racial polarization and Voting Rights Act analysis to estimate individual-level voting behavior from aggregate precinct-level data. While prior literature has acknowledged that small sample sizes can create issues for EI, this thesis argues that model failure is not driven by sample size alone, but rather by the interaction between small-N settings and unstable data distributions.

Using precinct-level demographic and election data from Mount Pleasant, New York, this study evaluates EI performance through three empirical tests: a threshold analysis, a bootstrap analysis, and a simulation study. The threshold analysis tests whether a minimum sample size is required for convergence, the bootstrap analysis evaluates how consistently the model converges under repeated resampling, and the simulation study isolates the effect of noise by testing EI under idealized conditions.

The findings demonstrate that no universal minimum sample size exists for EI convergence. Instead, convergence depends heavily on the underlying structure and stability of the data. The simulation study further shows that EI can perform well even at small sample sizes when noise and instability are minimized. These results suggest that researchers should use caution when applying EI in small-N jurisdictions and should evaluate data stability alongside sample size before interpreting estimates. 

This repository contains all code that was used to generate figures, as well as a full copy of my thesis!
