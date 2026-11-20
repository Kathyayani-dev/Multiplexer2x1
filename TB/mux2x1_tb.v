# code for  mux2x1_tb.v
...
   module mux2x1_tb();
        reg a,b,sel;
        wire y;
        integer i;
        mux2x1 DUT(a,b,sel,y);
        initial
        begin
                a=0;
                b=0;
                sel=0;
                #10;
                for(i=0;i<8;i=i+1)
                begin
                        {sel,a,b}=i;
                        #10;
                        $display("sel=%b,a=%b,b=%b,y=%b",sel,a,b,y);
                end
        end
  endmodule
...
