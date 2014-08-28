%-----------------------------------------------------------------------
% Job saved on 24-Aug-2014 20:12:50 by cfg_util (rev $Rev$)
% spm SPM - SPM12b (5672)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.tools.physio.save_dir = {''};
matlabbatch{1}.spm.tools.physio.log_files.vendor = 'Siemens';
matlabbatch{1}.spm.tools.physio.log_files.cardiac = {'siemens_PAV.ecg'};
matlabbatch{1}.spm.tools.physio.log_files.respiration = {''};
matlabbatch{1}.spm.tools.physio.log_files.sampling_interval = 0.0025;
matlabbatch{1}.spm.tools.physio.log_files.relative_start_acquisition = 0;
matlabbatch{1}.spm.tools.physio.sqpar.Nslices = 20;
matlabbatch{1}.spm.tools.physio.sqpar.NslicesPerBeat = [];
matlabbatch{1}.spm.tools.physio.sqpar.TR = 2.41;
matlabbatch{1}.spm.tools.physio.sqpar.Ndummies = 5;
matlabbatch{1}.spm.tools.physio.sqpar.Nscans = 400;
matlabbatch{1}.spm.tools.physio.sqpar.onset_slice = 11;
matlabbatch{1}.spm.tools.physio.sqpar.time_slice_to_slice = [];
matlabbatch{1}.spm.tools.physio.sqpar.Nprep = [];
matlabbatch{1}.spm.tools.physio.model.type = 'RETROICOR';
matlabbatch{1}.spm.tools.physio.model.order.c = 3;
matlabbatch{1}.spm.tools.physio.model.order.r = 4;
matlabbatch{1}.spm.tools.physio.model.order.cr = 1;
matlabbatch{1}.spm.tools.physio.model.order.orthogonalise = 'none';
matlabbatch{1}.spm.tools.physio.model.input_other_multiple_regressors = {''};
matlabbatch{1}.spm.tools.physio.model.output_multiple_regressors = 'multiple_regressors.txt';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.method = 'nominal';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.grad_direction = 'y';
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.zero = 1700;
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.slice = 1800;
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.vol = [];
matlabbatch{1}.spm.tools.physio.thresh.scan_timing.vol_spacing = [];
matlabbatch{1}.spm.tools.physio.thresh.cardiac.modality = 'ECG';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.method = 'auto_matched';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.min = 0.4;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.initial_cpulse_select.file = 'initial_cpulse_kRpeakfile.mat';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.method = 'off';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.file = 'posthoc_cpulse.mat';
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.percentile = 80;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.upper_thresh = 60;
matlabbatch{1}.spm.tools.physio.thresh.cardiac.posthoc_cpulse_select.lower_thresh = 60;
matlabbatch{1}.spm.tools.physio.verbose.level = 2;
matlabbatch{1}.spm.tools.physio.verbose.fig_output_file = 'Physio_2001_Pav.fig';
matlabbatch{1}.spm.tools.physio.verbose.use_tabs = false;
