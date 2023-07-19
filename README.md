# CKKW-L Merging with Pythia main89
Setup for CKKW-L merging predictions for MadGraph LO

## Code versions

Pythia 8.309

MadGraph5 3.4.2

HepMC 3.02.04

Rivet 3.1.6

# Instructions

The compressed LHE files were produced with MadGraph5
at LO, suiting the analysis cuts of the ATLAS analysis
`ATLAS_2014_I1319490`.

We use the Pythia `main89` example for merging with
CKKW-L to produce merged, showered predictions for W+jets
according to the above analysis.

First unzip the LHE files with:

```
gunzip madgraph*lhe*gz
```

The configurations can be used by adding the directory
containing the `main89` executable to your `$PATH` variable
and running (in the base directory of this repository):

```
bash run_ckkwl.sh
```

This wraps around the calls to the `main89` executable
with the shown configurations, and merges results for W+,
W- production with jets separately before combining
the histograms with `yodastack`.

The final line calls `rivet-mkhtml` to plot the individual
merged components for W+ and W-, as well as the combined
result.

A directory called `rivet-plots-main89ckkwl-w-test` will
be created containing the analysis output in HTML format.
