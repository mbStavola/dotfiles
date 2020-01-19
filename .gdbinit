python                                                                                                                                                                                                                                                         
import sys  

sys.path.insert(0, '/home/mbs/workspace/rust/src/etc/')

import gdb_rust_pretty_printing                                                                                                                                                                                                                                

gdb_rust_pretty_printing.register_printers(gdb)                                                                                                                                                                                                                
end  
