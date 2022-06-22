

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /button_play_tb/status
      waveform add -signals /button_play_tb/button_play_synth_inst/bmg_port/CLKA
      waveform add -signals /button_play_tb/button_play_synth_inst/bmg_port/ADDRA
      waveform add -signals /button_play_tb/button_play_synth_inst/bmg_port/DINA
      waveform add -signals /button_play_tb/button_play_synth_inst/bmg_port/WEA
      waveform add -signals /button_play_tb/button_play_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
