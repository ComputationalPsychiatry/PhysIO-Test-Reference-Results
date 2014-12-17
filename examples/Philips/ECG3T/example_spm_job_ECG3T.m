%-----------------------------------------------------------------------
% Job saved on 17-Dec-2014 15:53:20 by cfg_util (rev $Rev: 6134 $)
% spm SPM - SPM12 (6225)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.tools.physio.save_dir = {''};
matlabbatch{1}.spm.tools.physio.log_files.vendor = 'Philips';
matlabbatch{1}.spm.tools.physio.log_files.cardiac = {'/Users/kasperla/Documents/code/matlab/smoothing_trunk/PhysIOToolbox/examples/Philips/ECG3T/SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.respiration = {'/Users/kasperla/Documents/code/matlab/smoothing_trunk/PhysIOToolbox/examples/Philips/ECG3T/SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.scan_timing = {'/Users/kasperla/Documents/code/matlab/smoothing_trunk/PhysIOToolbox/examples/Philips/ECG3T/SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.sampling_interval = [];
matlabbatch{1}.spm.tools.physio.log_files.relative_start_acquisition = 0;
matlabbatch{1}.spm.tools.physio.sqpar.Nslices = 37;
matlabbatch{1}.spm.tools.physio.sqpar.NslicesPerBeat = [];
matlabbatch{1}.spm.tools.physio.sqpar.TR = 2.5;
matlabbatch{1}.spm.tools.physio.sqpar.Ndummies = 3;
matlabbatch{1}.spm.tools.physio.sqpar.Nscans = 495;
matlabbatch{1}.spm.tools.physio.sqpar.onset_slice = 19;
matlabbatch{1}.spm.tools.physio.sqpar.time_slice_to_slice = [];
matlabbatch{1}.spm.tools.physio.sqpar.Nprep = [];
matlabbatch{1}.spm.tools.physio.model.type = 'RETROICOR';
matlabbatch{1}.spm.tools.physio.model.order.c = 3;
matlabbatch{1}.spm.tools.physio.model.order.r = 4;
matlabbatch{1}.spm.tools.physio.model.order.cr = 1;
matlabbatch{1}.spm.tools.physio.model.order.orthogonalise = 'none';
matlabbatch{1}.spm.tools.physio.model.input_other_multiple_regressors = {'/Users/kasperla/Documents/code/matlab/smoothing_trunk/PhysIOToolbox/examples/Philips/ECG3T/rp_fMRI.txt'};
matlabbatch{1}.spm.tools.physio.model.output_multiple_regressors = 'multiple_regressors.txt';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.method = 'nominal';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.grad_direction = 'y';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.zero = 1700;
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.slice = 1800;
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.vol = [];
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.vol_spacing = [];
matlabbatch{1}.spm.tools.physio.thresh.cardiac.modality = 'ECG';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.method = 'load_from_logfile';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.min = 0.4;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.file = 'kRpeakfile.mat';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.off = struct([]);
matlabbatch{1}.spm.tools.physio.verbose.level = 2;
matlabbatch{1}.spm.tools.physio.verbose.fig_output_file = 'PhysIO_output_level2.fig';
matlabbatch{1}.spm.tools.physio.verbose.use_tabs = false;
