

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /INSTR_MEM_tb/status
      waveform add -signals /INSTR_MEM_tb/INSTR_MEM_synth_inst/bmg_port/CLKA
      waveform add -signals /INSTR_MEM_tb/INSTR_MEM_synth_inst/bmg_port/ADDRA
      waveform add -signals /INSTR_MEM_tb/INSTR_MEM_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
