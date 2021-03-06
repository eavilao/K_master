classdef multiunit < handle
    %%
    properties
        channel_no
        spkwf
        tseries
        trials
        corrgrams
    end
    %%
    methods
        %% class constructor
        function this = multiunit(unit)
            this.channel_no = unit.chnl;
            this.spkwf = mean(unit.spkwf);
        end
        %% add spike times
        function AddTrials(this,tspk,events_spk,events_smr,prs)
            [this.tseries,this.trials] = AddTrials2Unit(tspk,events_spk,events_smr,prs);
        end
        %% analyse spikes
        function AnalyseUnit(this,exp_name,behaviours,prs)
            [this.tseries,this.trials,this.corrgrams] = ...
                AnalyseUnit(exp_name,this.tseries,this.trials,behaviours.tseries,behaviours.trials,prs);
        end
        %% destroy spike times
        function destroy_spks(this)
            this.spks = [];
            this.tspk = [];
        end
        %% plot
        function plot(this,unit_num,exp_name,plottype)
            plotunit(this,unit_num,exp_name,plottype);
        end
    end
end