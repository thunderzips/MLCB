module mux14(input i,input[1:0] s, output[3:0] o);
    assign o[0] = (s==0)&&i;
    assign o[1] = (s==1)&&i;
    assign o[2] = (s==2)&&i;
    assign o[3] = (s==3)&&i;
endmodule


module dff(input d,clk,en,reset, output reg q);
    reg qq;
    always @(posedge clk) begin
        if(en==1)begin
            q = d;
        end
        if(reset == 1) begin
            q=0;
        end
        
    end
endmodule

/*
module test_bench_dff();
    wire res,en;
    wire q;
    reg clk,d;
    assign res=0; assign en = 1;

    dff instantation (.clk(clk),.d(d),.en(en),.reset(res),.q(q));

    always #5 clk = ~clk;
    always #15 d = ~d;

    initial begin
        clk<=0;
        d<=0;
        $monitor("%b %b %b",clk,d,q);
    end
endmodule
*/

/*
module test_bench_mux();
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
*/