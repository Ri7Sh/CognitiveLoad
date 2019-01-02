% EEGLAB history file generated on the 19-Nov-2018
% ------------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_snapread('/home/bhavana/Downloads/eeg_recording_1.SMA', 400.000000);
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'nochannel',[1:3] );
EEG = eeg_checkset( EEG );
EEG=pop_chanedit(EEG, 'lookup','/home/bhavana/Downloads/eeglab14_1_2b/plugins/dipfit2.3/standard_BESA/standard-10-5-cap385.elp','load',{'/home/bhavana/Downloads/channel_locations.elp' 'filetype' 'polhemus'},'delete',1,'delete',1,'delete',1);
EEG = eeg_checkset( EEG );
EEG = pop_eegfiltnew(EEG, 1,40,826,0,[],1);
EEG.setname='after filter';
EEG = eeg_checkset( EEG );
EEG = pop_reref( EEG, []);
EEG.setname='after rerefer';
EEG = eeg_checkset( EEG );
EEG = pop_rmbase( EEG, [0  615876]);
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = pop_runica(EEG, 'extended',1,'interupt','on');
EEG = eeg_checkset( EEG );
pop_ADJUST_interface(  );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = pop_saveset( EEG, 'filename','data_after_adjust.set','filepath','/home/bhavana/Downloads/eegdata/');
EEG = eeg_checkset( EEG );
pop_ADJUST_interface( data_after_adjust.set );
EEG = pop_select( EEG,'nochannel',{'LEYE' 'REYE' 'AF8' 'F2' 'F8' 'FCZ' 'FC6' 'C6' 'T8' 'TP8' 'TP10' 'REF'});
EEG.setname='data_after_ADJUST';
EEG = pop_loadset('filename','data_after_ADJUST.set','filepath','/home/bhavana/Downloads/eegdata/');
EEG = eeg_checkset( EEG );
