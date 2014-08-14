%-----------------------------------------------------------------------
% Job saved on 03-May-2014 14:40:46 by cfg_util (rev $Rev: 4972 $)
% spm SPM - SPM12b (5672)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.tools.physio.save_dir = {''};
matlabbatch{1}.spm.tools.physio.log_files.vendor = 'Philips';
matlabbatch{1}.spm.tools.physio.log_files.cardiac = {'SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.respiration = {'SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.sampling_interval = [];
matlabbatch{1}.spm.tools.physio.log_files.relative_start_acquisition = 0;
matlabbatch{1}.spm.tools.physio.sqpar.Nslices = 32;
matlabbatch{1}.spm.tools.physio.sqpar.NslicesPerBeat = [];
matlabbatch{1}.spm.tools.physio.sqpar.TR = 2;
matlabbatch{1}.spm.tools.physio.sqpar.Ndummies = 0;
matlabbatch{1}.spm.tools.physio.sqpar.Nscans = 180;
matlabbatch{1}.spm.tools.physio.sqpar.onset_slice = 17;
matlabbatch{1}.spm.tools.physio.sqpar.time_slice_to_slice = [];
matlabbatch{1}.spm.tools.physio.sqpar.Nprep = [];
matlabbatch{1}.spm.tools.physio.model.type = 'RETROICOR_HRV_RVT';
matlabbatch{1}.spm.tools.physio.model.order.c = 3;
matlabbatch{1}.spm.tools.physio.model.order.r = 4;
matlabbatch{1}.spm.tools.physio.model.order.cr = 1;
matlabbatch{1}.spm.tools.physio.model.order.orthogonalise = 'none';
matlabbatch{1}.spm.tools.physio.model.input_other_multiple_regressors = {''};
matlabbatch{1}.spm.tools.physio.model.output_multiple_regressors = 'multiple_regressors.txt';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.method = 'gradient_log';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.grad_direction = 'y';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.zero = 700;
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.slice = 1800;
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.vol = [];
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.vol_spacing = [];
matlabbatch{1}.spm.tools.physio.thresh.cardiac.modality = 'PPU';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.method = 'auto_template';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.min = 0.4;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.file = 'initial_cpulse_kRpeakfile.mat';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.method = 'off';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.file = 'posthoc_cpulse.mat';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.percentile = 80;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.upper_thresh = 60;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.lower_thresh = 60;
matlabbatch{1}.spm.tools.physio.verbose.level = 2;
matlabbatch{1}.spm.tools.physio.verbose.fig_output_file = 'PhysIO_output_level2.jpg';
matlabbatch{1}.spm.tools.physio.verbose.use_tabs = false;
