module mux14(input i,input[1:0] s, output[3:0] o);
    assign o[0] = (s==0)&&i;
    assign o[1] = (s==1)&&i;
    assign o[2] = (s==2)&&i;
    assign o[3] = (s==3)&&i;
endmodule

module test_bench();
    wire i;
    reg[1:0] s;
    wire[3:0] o;
    
    mux14 instantation (.i(i),.s(s),.o(o));

    genvar l;
    assign i=1;
    for(l=0;l<4;l=l+1) initial begin
        assign s = l;
        $monitor ("%b ",o);
    end

endmodule