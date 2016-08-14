# Another example Binder with a Dockerfile

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org/repo/richstoner/cshl-synbio-binder)

This is a Binder-compatible repository that contains a variety of synthetic biology tools and source code.

To use this binder, click on the badge above or go to http://mybinder.org/repo/richstoner/cshl-synbio-binder . A new virtual server will be launched on the mybinder cluster for your use with all of the tools and data pre-installed and configured. This server will last for as long as you're using it. It will shutdown after one hour of inactivity, so don't save anything important on this. 


If you want to learn more about the mybinder project, go here: http://mybinder.org/ . Many thanks to the [Freeman lab](http://thefreemanlab.com/) @ Janelia Farm for providing computational resources for this project.


## Table of Contents

This binder is organized with the following structure:

## CSHLSynBio2016 

This folder contains code developed through the CSHL Synthetic Biologicy Course in 2016. Inside, you'll find...

<hr>

## ./FinalProject

### Project Overview

This project was designed to evaluate the feasiblity of using a TXTL-CRISPRi system to characterize the impact guide source and location on respression in a simple system. Ideally, we'd like to explore the kinetics of the CRISPR/cas9 RNP binding at a very fine time scale, but that will require more method development beyond the scope of this two week course. ;)

The general worklow:

1) Build a model of the system

2) Design and plan the experiments

3) Write code to automate the reaction pool creation on a liquidhandler (LabCyte Echo 550!)

4) Run experiment(s)

5) Analyze data (this part may not make it into this notebook - running out of time for the course)


### An interactive model of TXTL CRISPRi-mediated knockdown of p70a-deGFP expression

This code models a TXTL CRISPRi system with a deGFP reporter. This model covers both plasmid-based and static concentrations of dCas9 in TXTL solution, as well as dna-based and direct RNA introduction of the guide RNA. 

<small><b>Packages used: Scipy, pandas, jupyterwidgets</b></small>


### Experimental design and layout for a series of TXTL CRISPRi reactions, using a LabCyte Echo 550 liquidhandler

This code takes a series of input parameters (starting concentration ranges, desired experimental conditions, reaction volumes, etc) and generates the necessary preparatory files for creating the source plate from stock solutions, the final sample list, and every discrete transfer in a format ready for the liquidhandler.

This code also allows us to estimate how much volume of each reagent will be used, compare between high and low dead volume source plates, and target both 96 or 384 SBS destination plates. 

<small><b>Packages used: pandas</b></small>

<hr>

## ./Tools

In this folder, you'll find a variety of tools developed throughout the course for a variety of different modules. Each is reasonably self-contained. 


### Type 1 CRISPR/cas3 guide design tool

This code parses a genback/APE file, displays the plasmid, locates 4 PAM sequences, extracts all potential Type 1 / Cas3 guides, and then verifies these are the same guides that were used in a piece of primary literature [1]. This code does not make any attempt to score the guides.

Thanks to Chase Beisel and Michelle Luo for providing guidance on this process.

<small><b>Packages used: Coral, pandas</b></small>


### TXTL model of GFP expression

This code models a simple TXTL system with a p70a-deGFP reporter plasmid driven by a p70a sigma factor present in the TXTL mixture. We then performed the real experiment and then compared the real-world measures of GFP concentration against the model itself.

Thanks to Mary Dunlop & Nick Rossi for providing guidance on the modeling, and Vincent Noireaux and Ryan Marshall for setting up and guiding us through the TXTL experiments.

<small><b>Packages used: scipy, pandas</b></small>


### TXTL model of a repressor gene circuit

This code models a more complicated TXTL gene network: a repressor circuit. Here, we do a paramter exploration to understand the influence of the Hill coeffiecient on the repressor dynamics.

Thanks to Mary Dunlop and Nick Rossi for providing guidance on this process.

<small><b>Packages used: scipy, bokeh, pandas</b></small>


### Swapping resistance genes within a plasmid using golden gate assembly

This code walks through how to create replace a specific gene of interest in one plasmid with another gene from a donor plasmid using a golden gate assembly technique. 

Thanks to Mike and Suzie Hsu for providing guidance on this process.

<small><b>Packages used: coral, pandas</b></small>


### Rendering an annotated gene using dnaplotlib

This code walks through how to create an annotated gene figure using various components from SBOL. Here we show a proposed modification to a straightforward mechanism in an effort to increase the experssion of the eGFP CDS.

<small><b>Packages used: dnaplotlib</b></small>


### Setting up CRISPR TXTL experiment for a LabCyte Echo

This code is similar to the Echo code described above. It takes a series of inputs, calculates required volumes, and generates the necessary plating scripts. 

This specific example demonstrates how to craft a complex set of conditions for conducting a CRISPR TXTL experiment. Here, we intend to look at differences between single-stranded and double-stranded DNA used to generate guide RNA for dCas9-mediated repression of a deGFP plasmid. 

Thanks to Linda Damore and Alex & John from Labcyte for providing guidance on this process.

<small><b>Packages used: pandas</b></small>

<hr>


## References

0. <b>Cold Spring Harbor Synthetic Biology Course 2016</b> https://cshlsynbio.wordpress.com/ 

1. <b>Repurposing endogenous type I CRISPR-Cas systems for programmable gene repression</b>
  <small>Michelle L. Luo, Adam S. Mullis, Ryan T. Leenay and Chase L. Beisel</small>
  http://nar.oxfordjournals.org/content/43/1/674

2. <b>Characterizing and prototyping genetic networks with cell-free transcription–translation reactions</b>
  <small>Melissa K Takahashi, Clarmyra A Hayes, James Chappell, Zachary Z Sun, Richard M Murray, Vincent Noireaux, and Julius B Lucks</small>
  http://www.sciencedirect.com/science/article/pii/S1046202315002261

3. <b>The All E. coli TX-TL Toolbox 2.0: A Platform for Cell-Free Synthetic Biology</b>
  <small>Jonathan Garamella, Ryan Marshall, Mark Rustad, and Vincent Noireaux</small>
  http://pubs.acs.org/doi/abs/10.1021/acssynbio.5b00296


4. <b>Methods and applications for assembling large DNA constructs</b>
  <small>Chuck Merryman, Daniel G. Gibson</small>
  http://www.sciencedirect.com/science/article/pii/S1096717612000262

5. <b>Functional optimization of gene clusters by combinatorial design and assembly</b>
   Michael J Smanski, Swapnil Bhatia, Dehua Zhao, YongJin Park, Lauren B A Woodruff, Georgia Giannoukos, Dawn Ciulla, Michele Busby, Johnathan Calderon, Robert Nicol, D Benjamin Gordon, Douglas Densmore, and Christopher A Voigt
   http://www.nature.com/doifinder/10.1038/nbt.3063

6. <b>LabCyte Echo 550</b> http://www.labcyte.com/products/liquidhandling/echo-550-liquid-handler

<hr>

## Technical details:

This binder is based off of the jupyter/datascience docker stack. It was modified to include 

[http://biopython.org/wiki/Biopython](http://biopython.org/) - Biopython is a set of freely available tools for biological computation written in Python by an international team of developers

[https://github.com/klavinslab/coral](https://github.com/klavinslab/coral) - Coral, a library and framework for specifying synthetic biology design processes

[https://github.com/VoigtLab/dnaplotlib](https://github.com/VoigtLab/dnaplotlib) - A tool to visualize gene circuits

[https://github.com/jstjohn/SeqPrep.git](https://github.com/jstjohn/SeqPrep.git) - A tool to prepare NGS fasta files (not used in the notebooks above)

If you want to run any of these notebooks locally, simply go into the notebook view itself and, using the file menu, select 'Download as Ipython notebook'. This will download the notebook locally, where you'll be able to run it with your own jupyter notebook (you'll need to install the extra packages manually).


## License 

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.


## Want to work on this type of project AND get paid? We're hiring! http://www.synthego.com/careers/



