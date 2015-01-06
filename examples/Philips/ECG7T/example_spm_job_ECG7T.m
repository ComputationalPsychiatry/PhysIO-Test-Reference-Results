%-----------------------------------------------------------------------
% Job saved on 06-Jan-2015 09:56:59 by cfg_util (rev $Rev: 6134 $)
% spm SPM - SPM12 (6225)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.tools.physio.save_dir = {''};
matlabbatch{1}.spm.tools.physio.log_files.vendor = 'Philips';
matlabbatch{1}.spm.tools.physio.log_files.cardiac = {'/Users/kasperla/Documents/code/matlab/smoothing_trunk/PhysIOToolbox/examples/Philips/ECG7T/SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.respiration = {'/Users/kasperla/Documents/code/matlab/smoothing_trunk/PhysIOToolbox/examples/Philips/ECG7T/SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.scan_timing = {''};
matlabbatch{1}.spm.tools.physio.log_files.sampling_interval = [];
matlabbatch{1}.spm.tools.physio.log_files.relative_start_acquisition = 0;
matlabbatch{1}.spm.tools.physio.sqpar.Nslices = 36;
matlabbatch{1}.spm.tools.physio.sqpar.NslicesPerBeat = [];
matlabbatch{1}.spm.tools.physio.sqpar.TR = 2;
matlabbatch{1}.spm.tools.physio.sqpar.Ndummies = 3;
matlabbatch{1}.spm.tools.physio.sqpar.Nscans = 230;
matlabbatch{1}.spm.tools.physio.sqpar.onset_slice = 18;
matlabbatch{1}.spm.tools.physio.sqpar.time_slice_to_slice = [];
matlabbatch{1}.spm.tools.physio.sqpar.Nprep = [];
matlabbatch{1}.spm.tools.physio.model.type = 'RETROICOR';
matlabbatch{1}.spm.tools.physio.model.order.c = 3;
matlabbatch{1}.spm.tools.physio.model.order.r = 4;
matlabbatch{1}.spm.tools.physio.model.order.cr = 1;
matlabbatch{1}.spm.tools.physio.model.order.orthogonalise = 'none';
matlabbatch{1}.spm.tools.physio.model.input_other_multiple_regressors = {'/Users/kasperla/Documents/code/matlab/smoothing_trunk/tSNR_fMRI_SPM/CheckPhysRETROICOR/PhysIOToolbox/examples/Philips/ECG7T/rp_fMRI.txt'};
matlabbatch{1}.spm.tools.physio.model.output_multiple_regressors = 'multiple_regressors.txt';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.gradient_log.grad_direction = 'y';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.gradient_log.zero = 1500;
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.gradient_log.slice = 2200;
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.gradient_log.vol = [];
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.gradient_log.vol_spacing = 0.09;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.modality = 'ECG';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.auto_matched.min = 0.4;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.auto_matched.file = 'initial_cpulse_kRpeakfile.mat';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.off = struct([]);
matlabbatch{1}.spm.tools.physio.verbose.level = 2;
matlabbatch{1}.spm.tools.physio.verbose.fig_output_file = 'PhysIO_output_level2.fig';
matlabbatch{1}.spm.tools.physio.verbose.use_tabs = false;
