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

The PhysIO Toolbox provides model-based physiological noise correction of 
fMRI data using peripheral measures of respiration and cardiac pulsation. 
It incorporates noise models of cardiac/respiratory phase (RETROICOR, 
Glover et al. 2000), as well as heart rate variability and respiratory 
volume per time (cardiac response function, Chang et. al, 2009, respiratory 
response function, Birn et al. 2006). The toolbox is usable via the SPM 
batch editor, performs automatic pre-processing of noisy peripheral data 
and outputs nuisance regressor files directly suitable for SPM 
(multiple_regressors.txt).