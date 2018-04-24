module operator_prority();

    bit [19:0] idac_add;

    initial begin 
        for(int i = 0; i < 8; i++) begin
            idac_add[4:0]   = 31 - (i*4+0) ; 
            idac_add[9:5]   = 31 - (i*4+1) ;
            idac_add[14:10] = 31 - (i*4+2) ; 
            idac_add[19:15] = 31 - (i*4+3) ; 

            $display( $sformatf("IDACis %h and i is %d ", idac_add,   i) );

            $display( $sformatf("idac_add[4:0]  is %h", idac_add[4:0]  ) );
            $display( $sformatf("idac_add[9:5]  is %h", idac_add[9:5]  ) );
            $display( $sformatf("idac_add[14:10]is %h", idac_add[14:10]) );
            $display( $sformatf("idac_add[19:15]is %h", idac_add[19:15]) );

            $display( $sformatf("idac_add[4:0]  is %h", (31 - i*4+0) ) );
            $display( $sformatf("idac_add[9:5]  is %h", (31 - i*4+1) ) );
            $display( $sformatf("idac_add[14:10]is %h", (31 - i*4+2) ) );
            $display( $sformatf("idac_add[19:15]is %h", (31 - i*4+3) ) );
        end
    end

endmodule
