%% 0. Put code directory into path; for some options, SPM should also be in the path
pathRETROICORcode = fullfile(fileparts(mfilename('fullpath')), ...
    '../../../code');

addpath(genpath(pathRETROICORcode));
clear files sqpar thresh order verbose

%% 1. Define Input Files

files.vendor                = 'Philips';
files.log_cardiac           = 'SCANPHYSLOG.log';      
files.log_respiration       = 'SCANPHYSLOG.log';      
files.input_other_multiple_regressors = 'rp_fMRI.txt'; % either txt-file or mat-file with variable R
files.output_multiple_regressors = 'multiple_regressors_2.mat';


%% 2. Define Nominal Sequence Parameter (Scan Timing)

sqpar = struct('Nslices', 36, 'NslicesPerBeat', 36, 'TR', 2.00, ...
    'Ndummies', 3, 'Nscans', 230, 'onset_slice', 18);


%% 3. Define Gradient Thresholds to Infer Gradient Timing (Philips only)
thresh = struct('scan_timing', [], 'cardiac', []);
thresh.scan_timing = struct('zero', 1500, 'slice', 2200, 'vol', 2200, ...
   'vol_spacing', 0.1, 'grad_direction', 'y');


%% 4. Define which Cardiac Data Shall be Used

%% 4.1. Using heart beat events logged prospectively during scanning instead
thresh.cardiac.modality = 'ECG'; % 'ECG' or 'OXY' (for pulse oximetry)

%% 4.2. Using ECG time curve to detect heartbeat events, via a chosen or
%% saved reference R-peak
thresh.cardiac.min = 0.5;
thresh.cardiac.kRpeakfile = 'SCANPHYSLOG_ECG_kRpeakfile.mat'; % used to save reference peak or load it from there, if manual_peak_select == true
thresh.cardiac.manual_peak_select = false; % true or false. If true, a input window occurs where a typical maximum (R-peak or oximetry peak) shall be selected by mouse-clicks


%% 5. Order of RETROICOR-expansions for cardiac, respiratory and
%% interaction terms. Option to orthogonalise regressors

order = struct('c',3,'r',4,'cr',1, 'orthogonalise', 'none');


%% 6. Output Figures to be generated
% 0 = none; 
% 1 = main plots (default); 
% 2 = debugging plots: for missed slice/volume events, missed heartbeats, 1D time series of created regressors
% 3 = all plots, incl. cardiac/respiratory phase estimation,
%     slice-to-volume assignment

verbose = 3;

%% 7. Run the main script with defined parameters

[R, ons_secs] = physio_main_create_regressors(files, ...
    thresh, sqpar, order, verbose);