Example Repository for TAPAS PhysIO Toolbox
===========================================

> Copyright (C) 2012-2017 Lars Kasper <kasper@biomed.ee.ethz.ch>

> Translational Neuromodeling Unit (TNU)

> Institute for Biomedical Engineering

> University of Zurich and ETH Zurich

Copying
-------

The PhysIO Toolbox is free software: you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program (see the file LICENSE).  If not, see
<http://www.gnu.org/licenses/>.

Purpose
-------

This is the Example Repository for the PhysIO Toolbox, holding all the example data 
from different vendors and corresponding example scripts that work with the toolbox.
 
Each example script is saved in the respective folder with the logfile data. Three script types are saved with each example:
- SPM job (`*spm_job.mat`)
- editable SPM job (`*spm_job.m`)
- plain matlab script (`*matlab_script.m`)

Installation
------------

1. Unzip the example files
2. Start Matlab
3. Make sure the PhysIO Toolbox code-folder is added to the matlab path
4. For use of the SPM Batch Editor:
    a. Copy the PhysIO Toolbox code folder to <yourSPMFolder>/toolbox/PhysIO 
    b. Restart Spm or call `spm_jobman('initcfg')` 

Content
--------

The following datasets are available and can be downloaded with the toolbox in a specific repository [][https://tnurepository.ethz.ch/physio/physio-examples](`physio-examples`) which can be cloned from `git@tnurepository.ethz.ch:physio/physio-examples.git`.


Philips
-------

### ECG 3T ###

Courtesy of Sandra Iglesias, Translational Neuromodeling Unit, ETH &
University of Zurich

4-electrode ECG and breathing belt, Philips 3T Achieva scanner

Description: Standard example; shows how to use volume counting either
from beginning or end of run to synchronize physiological logfile with
acquisition onsets of fMRI scans.

### ECG 7T ###

Courtesy of Zina-Mary Manjaly, University Hospital Zurich

4-electrode ECG and breathing belt, Philips 7T Achieva scanner

Description: The ECG data for ultra-high field data is typically much
noisier than at 3 Tesla. Therefore, R-wave peaks are frequently missed
by prospective trigger detection and not marked correctly in the
logfile. This example shows how to select typical R-wave-peaks manually
and let the algorithm find the heartbeat events.

### PPU 3T ###

Courtesy of Diana Wotruba, University and University Hospital of Zurich

PPU (finger plethysmograph) and breathing belt, Philips 3T Achieva
scanner

Description: Similar to ECG3T, but a plethysmograph instead of an ECG
was used to monitor the cardiac pulsation. Example shows how to extract
heart and breathing rate.

General Electric
-----------------

### PPU 3T ###

Courtesy of Steffen Bollmann, Kinderspital Zurich and ETH Zurich

PPU (finger plethysmograph) and breathing belt, General Electric 3T
scanner

Description: Similar to PPU, but acquired on a GE system with two
separate output logfiles for pulse oximetry and breathing amplitude,
sampled with 40 Hz. The quality of the signal is particularly
challenging, stemming from a patient population.

Siemens
-------

### ECG 3T ###

Courtesy of Miriam Sebold, Charite Berlin, and Quentin Huys, TNU Zurich

4-electrode ECG data, Siemens 3T scanner

Description: Similar to ECG 3T, but acquired on a Siemens system with only one logfile for ECG data. The quality of the signal is challenging, stemming from a patient population.