% Script that executes ECG 3T Philips logfile. Just press play (F5)
%
% 
% Note: 
% - This is the input script to the PhysIO toolbox. Only this file has to be adapted for your study.
% - For documentation of any of the defined substructures here, please
% see also tapas_physio_new.m or the Manual_PhysIO-file.
%
% Copyright (C) 2013, Institute for Biomedical Engineering, ETH/Uni Zurich.
%
% This file is part of the PhysIO toolbox, which is released under the terms of the GNU General Public
% Licence (GPL), version 3. You can redistribute it and/or modify it under the terms of the GPL
% (either version 3 or, at your option, any later version). For further details, see the file
% COPYING or <http://www.gnu.org/licenses/>.
%
% $Id$
%
%% 0. Put code directory into path; for some options, SPM should also be in the path

pathRETROICORcode = fullfile(fileparts(mfilename('fullpath')), ...
    '../../../code');

addpath(genpath(pathRETROICORcode));

physio      = tapas_physio_new();         % create structure, numbering according to *PhysIO_PhysNoiseBackground.pptx
log_files   = physio.log_files;     % 1a) Read logfiles
sqpar       = physio.sqpar;         % 1b) Sequence timing
thresh      = physio.thresh;        % 2) Preprocess phys & align scan-timing
model       = physio.model;         % 3)/4) Model physiological time series
verbose     = physio.verbose;       % Auxiliary: Output


%% 1. Define Input Files

log_files.vendor            = 'Philips';
log_files.cardiac           = 'SCANPHYSLOG.log';      
log_files.respiration       = 'SCANPHYSLOG.log';      


%% 2. Define Nominal Sequence Parameter (Scan Timing)

sqpar.Nslices           = 37;
sqpar.NslicesPerBeat    = 37; % typically equivalent to Nslices; exception: heartbeat-triggered sequence
sqpar.TR                = 2.50;
sqpar.Ndummies          = 3;
sqpar.Nscans            = 495;
sqpar.onset_slice       = 19;
sqpar.Nprep             = []; % set to >=0 to count scans and dummy 
                              % volumes from beginning of run, i.e. logfile,
                              % includes counting of preparation gradients
sqpar.time_slice_to_slice  = sqpar.TR / sqpar.Nslices;


%% 3. Define Gradient Thresholds to Infer Gradient Timing (Philips only)
% 3.1. Determine volume start solely by marking every Nslices-th scan slice
% event as volume event

use_gradient_log_for_timing = true; % true or false

if use_gradient_log_for_timing
    thresh.scan_timing.grad_direction = 'y';
    thresh.scan_timing.zero         = 1700;
    thresh.scan_timing.slice        = 1800;
    thresh.scan_timing.vol          = [];   % leave [], if unused; set value >=.slice,
                                            % if volume start gradients are higher than slice gradients
    thresh.scan_timing.vol_spacing  = [];   % leave [], if unused; set to e.g. 50e-3 (seconds),
                                            % if there is a time gap between last slice of a volume
                                            % and first slice of the next
else
    thresh.scan_timing = [];
end
    

%% 4. Define which Cardiac Data Shall be Used

thresh.cardiac.modality = 'ECG';
thresh.cardiac.initial_cpulse_select.method = 'load_from_logfile';
thresh.cardiac.posthoc_cpulse_select.method = 'off';


%% 5. Order of RETROICOR-expansions for cardiac, respiratory and
%% interaction terms. Option to orthogonalise regressors

model.type = 'RETROICOR';
model.order = struct('c',3,'r',4,'cr',1, 'orthogonalise', 'none');
model.input_other_multiple_regressors = 'rp_fMRI.txt'; % either .txt-file or .mat-file (saves variable R)
model.output_multiple_regressors = 'multiple_regressors.txt';


%% 6. Output Figures to be generated

verbose.level           = 3; % 0 = none; 1 = main plots (default);  2 = debugging plots, for setting up new study; 3 = all plots
verbose.fig_output_file = 'PhysIO_output_level2.fig'; % Physio.tiff, .ps, .fig possible


%% 7. Run the main script with defined parameters

physio.log_files    = log_files;
physio.sqpar        = sqpar;
physio.model        = model;
physio.thresh       = thresh;
physio.verbose      = verbose;

[physio_out, R, ons_secs] = tapas_physio_main_create_regressors(physio);
