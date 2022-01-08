`include "define.v"

module Weight_MUX(
    input [`WGT_WIDTH-1:0] Weight_0,
    input [`WGT_WIDTH-1:0] Weight_1,
    input [`WGT_WIDTH-1:0] Weight_2,
    input [`WGT_WIDTH-1:0] Weight_3,
    input [`WGT_WIDTH-1:0] Weight_4,
    input [`WGT_WIDTH-1:0] Weight_5,
    input [`WGT_WIDTH-1:0] Weight_6,
    input [`WGT_WIDTH-1:0] Weight_7,
    input [`WGT_WIDTH-1:0] Weight_8,
    input [`WGT_WIDTH-1:0] Weight_9,
    input [`WGT_WIDTH-1:0] Weight_10,
    input [`WGT_WIDTH-1:0] Weight_11,
    input [`WGT_WIDTH-1:0] Weight_12,
    input [`WGT_WIDTH-1:0] Weight_13,
    input [`WGT_WIDTH-1:0] Weight_14,
    input [`WGT_WIDTH-1:0] Weight_15,
    input [`WGT_WIDTH-1:0] Weight_16,
    input [`WGT_WIDTH-1:0] Weight_17,
    input [`WGT_WIDTH-1:0] Weight_18,
    input [`WGT_WIDTH-1:0] Weight_19,
    input [`WGT_WIDTH-1:0] Weight_20,
    input [`WGT_WIDTH-1:0] Weight_21,
    input [`WGT_WIDTH-1:0] Weight_22,
    input [`WGT_WIDTH-1:0] Weight_23,
    input [`WGT_WIDTH-1:0] Weight_24,
    input [`WGT_WIDTH-1:0] Weight_25,
    input [`WGT_WIDTH-1:0] Weight_26,
    input [`WGT_WIDTH-1:0] Weight_27,
    input [`WGT_WIDTH-1:0] Weight_28,
    input [`WGT_WIDTH-1:0] Weight_29,
    input [`WGT_WIDTH-1:0] Weight_30,
    input [`WGT_WIDTH-1:0] Weight_31,
    input [`WGT_WIDTH-1:0] Weight_32,
    input [`WGT_WIDTH-1:0] Weight_33,
    input [`WGT_WIDTH-1:0] Weight_34,
    input [`WGT_WIDTH-1:0] Weight_35,
    input [`WGT_WIDTH-1:0] Weight_36,
    input [`WGT_WIDTH-1:0] Weight_37,
    input [`WGT_WIDTH-1:0] Weight_38,
    input [`WGT_WIDTH-1:0] Weight_39,
    input [`WGT_WIDTH-1:0] Weight_40,
    input [`WGT_WIDTH-1:0] Weight_41,
    input [`WGT_WIDTH-1:0] Weight_42,
    input [`WGT_WIDTH-1:0] Weight_43,
    input [`WGT_WIDTH-1:0] Weight_44,
    input [`WGT_WIDTH-1:0] Weight_45,
    input [`WGT_WIDTH-1:0] Weight_46,
    input [`WGT_WIDTH-1:0] Weight_47,
    input [`WGT_WIDTH-1:0] Weight_48,
    input [`WGT_WIDTH-1:0] Weight_49,
    input [5:0] Weight_Select,
    output reg [`WGT_WIDTH-1:0] Selected_Weight
);

    always @ (Weight_Select) begin
        case (Weight_Select)
            6'd0: Selected_Weight <= Weight_0;
            6'd1: Selected_Weight <= Weight_1;
            6'd2: Selected_Weight <= Weight_2;
            6'd3: Selected_Weight <= Weight_3;
            6'd4: Selected_Weight <= Weight_4;
            6'd5: Selected_Weight <= Weight_5;
            6'd6: Selected_Weight <= Weight_6;
            6'd7: Selected_Weight <= Weight_7;
            6'd8: Selected_Weight <= Weight_8;
            6'd9: Selected_Weight <= Weight_9;
            6'd10: Selected_Weight <= Weight_10;
            6'd11: Selected_Weight <= Weight_11;
            6'd12: Selected_Weight <= Weight_12;
            6'd13: Selected_Weight <= Weight_13;
            6'd14: Selected_Weight <= Weight_14;
            6'd15: Selected_Weight <= Weight_15;
            6'd16: Selected_Weight <= Weight_16;
            6'd17: Selected_Weight <= Weight_17;
            6'd18: Selected_Weight <= Weight_18;
            6'd19: Selected_Weight <= Weight_19;
            6'd20: Selected_Weight <= Weight_20;
            6'd21: Selected_Weight <= Weight_21;
            6'd22: Selected_Weight <= Weight_22;
            6'd23: Selected_Weight <= Weight_23;
            6'd24: Selected_Weight <= Weight_24;
            6'd25: Selected_Weight <= Weight_25;
            6'd26: Selected_Weight <= Weight_26;
            6'd27: Selected_Weight <= Weight_27;
            6'd28: Selected_Weight <= Weight_28;
            6'd29: Selected_Weight <= Weight_29;
            6'd30: Selected_Weight <= Weight_30;
            6'd31: Selected_Weight <= Weight_31;
            6'd32: Selected_Weight <= Weight_32;
            6'd33: Selected_Weight <= Weight_33;
            6'd34: Selected_Weight <= Weight_34;
            6'd35: Selected_Weight <= Weight_35;
            6'd36: Selected_Weight <= Weight_36;
            6'd37: Selected_Weight <= Weight_37;
            6'd38: Selected_Weight <= Weight_38;
            6'd39: Selected_Weight <= Weight_39;
            6'd40: Selected_Weight <= Weight_40;
            6'd41: Selected_Weight <= Weight_41;
            6'd42: Selected_Weight <= Weight_42;
            6'd43: Selected_Weight <= Weight_43;
            6'd44: Selected_Weight <= Weight_44;
            6'd45: Selected_Weight <= Weight_45;
            6'd46: Selected_Weight <= Weight_46;
            6'd47: Selected_Weight <= Weight_47;
            6'd48: Selected_Weight <= Weight_48;
            6'd49: Selected_Weight <= Weight_49;
            default: Selected_Weight <= `WGT_WIDTH'd0;
        endcase
    end

endmodule