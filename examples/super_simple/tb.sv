`include "uvm_pkg.sv" 

module tb; 
import uvm_pkg::*;  
`include "uvm_macros.svh" 
initial begin 
 `uvm_info("info1","Hello UVM!",UVM_LOW) 
 $finish();

end  
endmodule: tb 

