// No Contention child class. Generates unique frames
import xbar_pkg::*;
class random_packet_data_generator;
    randc logic valid;
    randc logic [port_add_msb:(port_add_msb-port_add_width+1)]port_address;
    randc logic [slot_id_msb:(slot_id_msb-slot_id_width+1)]slot_id;    
    randc logic [packet_width-1:0] payload;
    constraint port_address_c {port_address inside {[0:7]};}
    constraint slot_id_c {slot_id inside {[0:3]};}
     
    endclass

