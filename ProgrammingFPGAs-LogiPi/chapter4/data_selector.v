// DataSelector.v
// Author: Nicolas Clerc
// Project: DataSelector
// Status: Draft
// Version: 1.0
// Board: LogiPi
//----------------------------------------------------------------------------------------
// From "Programming FPGAs - Gettings started with verilog" book adapted for Logi-Pi
//-----------------------------------------------------------------------------------------

module data_selector(
    input A,
    input B,
    input SEL,
    output reg Q
);



    always @(A or B or SEL)
    begin
        if (SEL)
            Q = A;
        else
            Q = B;
    end


endmodule
