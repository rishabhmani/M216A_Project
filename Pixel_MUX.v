`include "define.v"

module Pixel_MUX(
    input [`PIX_WIDTH-1:0] Pixel_0,
    input [`PIX_WIDTH-1:0] Pixel_1,
    input [`PIX_WIDTH-1:0] Pixel_2,
    input [`PIX_WIDTH-1:0] Pixel_3,
    input [`PIX_WIDTH-1:0] Pixel_4,
    input [`PIX_WIDTH-1:0] Pixel_5,
    input [`PIX_WIDTH-1:0] Pixel_6,
    input [`PIX_WIDTH-1:0] Pixel_7,
    input [`PIX_WIDTH-1:0] Pixel_8,
    input [`PIX_WIDTH-1:0] Pixel_9,
    input [`PIX_WIDTH-1:0] Pixel_10,
    input [`PIX_WIDTH-1:0] Pixel_11,
    input [`PIX_WIDTH-1:0] Pixel_12,
    input [`PIX_WIDTH-1:0] Pixel_13,
    input [`PIX_WIDTH-1:0] Pixel_14,
    input [`PIX_WIDTH-1:0] Pixel_15,
    input [`PIX_WIDTH-1:0] Pixel_16,
    input [`PIX_WIDTH-1:0] Pixel_17,
    input [`PIX_WIDTH-1:0] Pixel_18,
    input [`PIX_WIDTH-1:0] Pixel_19,
    input [`PIX_WIDTH-1:0] Pixel_20,
    input [`PIX_WIDTH-1:0] Pixel_21,
    input [`PIX_WIDTH-1:0] Pixel_22,
    input [`PIX_WIDTH-1:0] Pixel_23,
    input [`PIX_WIDTH-1:0] Pixel_24,
    input [`PIX_WIDTH-1:0] Pixel_25,
    input [`PIX_WIDTH-1:0] Pixel_26,
    input [`PIX_WIDTH-1:0] Pixel_27,
    input [`PIX_WIDTH-1:0] Pixel_28,
    input [`PIX_WIDTH-1:0] Pixel_29,
    input [`PIX_WIDTH-1:0] Pixel_30,
    input [`PIX_WIDTH-1:0] Pixel_31,
    input [`PIX_WIDTH-1:0] Pixel_32,
    input [`PIX_WIDTH-1:0] Pixel_33,
    input [`PIX_WIDTH-1:0] Pixel_34,
    input [`PIX_WIDTH-1:0] Pixel_35,
    input [`PIX_WIDTH-1:0] Pixel_36,
    input [`PIX_WIDTH-1:0] Pixel_37,
    input [`PIX_WIDTH-1:0] Pixel_38,
    input [`PIX_WIDTH-1:0] Pixel_39,
    input [`PIX_WIDTH-1:0] Pixel_40,
    input [`PIX_WIDTH-1:0] Pixel_41,
    input [`PIX_WIDTH-1:0] Pixel_42,
    input [`PIX_WIDTH-1:0] Pixel_43,
    input [`PIX_WIDTH-1:0] Pixel_44,
    input [`PIX_WIDTH-1:0] Pixel_45,
    input [`PIX_WIDTH-1:0] Pixel_46,
    input [`PIX_WIDTH-1:0] Pixel_47,
    input [`PIX_WIDTH-1:0] Pixel_48,
    input [`PIX_WIDTH-1:0] Pixel_49,
    input [5:0] Pixel_Select,
    output reg [`PIX_WIDTH-1:0] Selected_Pixel
);

    always @ (Pixel_Select) begin
        case (Pixel_Select)
            6'd0: Selected_Pixel <= Pixel_0;
            6'd1: Selected_Pixel <= Pixel_1;
            6'd2: Selected_Pixel <= Pixel_2;
            6'd3: Selected_Pixel <= Pixel_3;
            6'd4: Selected_Pixel <= Pixel_4;
            6'd5: Selected_Pixel <= Pixel_5;
            6'd6: Selected_Pixel <= Pixel_6;
            6'd7: Selected_Pixel <= Pixel_7;
            6'd8: Selected_Pixel <= Pixel_8;
            6'd9: Selected_Pixel <= Pixel_9;
            6'd10: Selected_Pixel <= Pixel_10;
            6'd11: Selected_Pixel <= Pixel_11;
            6'd12: Selected_Pixel <= Pixel_12;
            6'd13: Selected_Pixel <= Pixel_13;
            6'd14: Selected_Pixel <= Pixel_14;
            6'd15: Selected_Pixel <= Pixel_15;
            6'd16: Selected_Pixel <= Pixel_16;
            6'd17: Selected_Pixel <= Pixel_17;
            6'd18: Selected_Pixel <= Pixel_18;
            6'd19: Selected_Pixel <= Pixel_19;
            6'd20: Selected_Pixel <= Pixel_20;
            6'd21: Selected_Pixel <= Pixel_21;
            6'd22: Selected_Pixel <= Pixel_22;
            6'd23: Selected_Pixel <= Pixel_23;
            6'd24: Selected_Pixel <= Pixel_24;
            6'd25: Selected_Pixel <= Pixel_25;
            6'd26: Selected_Pixel <= Pixel_26;
            6'd27: Selected_Pixel <= Pixel_27;
            6'd28: Selected_Pixel <= Pixel_28;
            6'd29: Selected_Pixel <= Pixel_29;
            6'd30: Selected_Pixel <= Pixel_30;
            6'd31: Selected_Pixel <= Pixel_31;
            6'd32: Selected_Pixel <= Pixel_32;
            6'd33: Selected_Pixel <= Pixel_33;
            6'd34: Selected_Pixel <= Pixel_34;
            6'd35: Selected_Pixel <= Pixel_35;
            6'd36: Selected_Pixel <= Pixel_36;
            6'd37: Selected_Pixel <= Pixel_37;
            6'd38: Selected_Pixel <= Pixel_38;
            6'd39: Selected_Pixel <= Pixel_39;
            6'd40: Selected_Pixel <= Pixel_40;
            6'd41: Selected_Pixel <= Pixel_41;
            6'd42: Selected_Pixel <= Pixel_42;
            6'd43: Selected_Pixel <= Pixel_43;
            6'd44: Selected_Pixel <= Pixel_44;
            6'd45: Selected_Pixel <= Pixel_45;
            6'd46: Selected_Pixel <= Pixel_46;
            6'd47: Selected_Pixel <= Pixel_47;
            6'd48: Selected_Pixel <= Pixel_48;
            6'd49: Selected_Pixel <= Pixel_49;
            default: Selected_Pixel <= `PIX_WIDTH'd0;
        endcase
    end

endmodule