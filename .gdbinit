python                                                                                                                                                                                                                                                         
import sys  

gdb.execute("set disassembly-flavor intel")

sys.path.insert(0, '/home/mbs/workspace/rust/rust/src/etc/')

try:
  import gdb_load_rust_pretty_printers
except:
  pass

end  
