%% 0. Put code directory into path; for some options, SPM should also be in the path
pathRETROICORcode = fullfile(fileparts(mfilename('fullpath')), ...
    '../../../code');

addpath(genpath(pathRETROICORcode));

physio      = physio_new();
log_files   = physio.log_files;
thresh      = physio.thresh;
sqpar       = physio.sqpar;
model       = physio.model;
verbose     = physio.verbose;

%% 1. Define Input Files

log_files.vendor            = 'Philips';
log_files.cardiac           = 'SCANPHYSLOG.log';      
log_files.respiration       = 'SCANPHYSLOG.log';      


%% 2. Define Nominal Sequence Parameter (Scan Timing)

% 2.1. Counting scans and dummy volumes from end of run, i.e. logfile
sqpar.Nslices           = 37;
sqpar.NslicesPerBeat    = 37;
sqpar.TR                = 2.50;
sqpar.Ndummies          = 3;
sqpar.Nscans            = 495;
sqpar.onset_slice       = 19;

% 2.2. Counting scans and dummy volumes from beginning of run, i.e. logfile,
%      includes counting of preparation gradients        
% (Uncomment the following line to execute) 
% sqpar.Nprep = 3;


%% 3. Define Gradient Thresholds to Infer Gradient Timing (Philips only)
% 3.1. Determine volume start solely by marking every Nslices-th scan slice
% event as volume event
thresh.scan_timing = struct('zero', 1700, 'slice', 1800, 'vol', [], ...
 'grad_direction', 'y');

% 3.2. Alternative: Determine volume start by especially high gradient height thresh.vol
% (Uncomment the following line to execute) 
% thresh.scan_timing.vol = 3000;

% 3.3. Alternative: Determine scan events via spacing of volume/slice gradients
% (Uncomment the following line to execute) 
% thresh.scan_timing.vol_spacing = 80e-3; % in seconds


%% 4. Define which Cardiac Data Shall be Used

%% 4.1. Using heart beat events logged prospectively during scanning instead
thresh.cardiac.modality = 'ECG';


%% 5. Order of RETROICOR-expansions for cardiac, respiratory and
%% interaction terms. Option to orthogonalise regressors

model.type = 'RETROICOR';
model.order = struct('c',3,'r',4,'cr',1, 'orthogonalise', 'none');
model.input_other_multiple_regressors = 'rp_fMRI.txt'; % either txt-file or mat-file with variable R
model.output_multiple_regressors = 'multiple_regressors.txt';


%% 6. Output Figures to be generated

verbose.level = 3;
% 0 = none; 
% 1 = main plots (default); 
% 2 = debugging plots: for missed slice/volume events, missed heartbeats, 1D time series of created regressors
% 3 = all plots, incl. cardiac/respiratory phase estimation,
%     slice-to-volume assignment
verbose.fig_output_file = 'PhysIO_output.ps';

%% 7. Run the main script with defined parameters

physio.log_files    = log_files;
physio.thresh       = thresh;
physio.sqpar        = sqpar;
physio.model        = model;
physio.verbose      = verbose;

[physio_out, R, ons_secs] = physio_main_create_regressors(physio);

%[R, ons_secs] = physio_main_create_regressors(files, ...
%    thresh, sqpar, order, verbose);