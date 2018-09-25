-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- Generated by Quartus Prime Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition
-- Created on Tue Sep 25 20:04:16 2018

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SM1 IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        input1 : IN STD_LOGIC := '0'
    );
END SM1;

ARCHITECTURE BEHAVIOR OF SM1 IS
    TYPE type_fstate IS (Incrementa_US_Compara_10,ZeraUS,IncrementaDS_Compara6,ZeraDS,IncrementaUM_Compara10,ZeraUM,IncrementaDM_Compara6,ZeraDM,IncrementaUH_Compara4,ComparaDHCom2,ZeraDH_UH,ComparaUHCom10,ZeraUH,IncrementaDH);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,input1)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= Incrementa_US_Compara_10;
        ELSE
            CASE fstate IS
                WHEN Incrementa_US_Compara_10 =>
                    IF ((input1 = '1')) THEN
                        reg_fstate <= ZeraUS;
                    ELSIF (NOT((input1 = '1'))) THEN
                        reg_fstate <= Incrementa_US_Compara_10;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Incrementa_US_Compara_10;
                    END IF;
                WHEN ZeraUS =>
                    reg_fstate <= IncrementaDS_Compara6;
                WHEN IncrementaDS_Compara6 =>
                    IF (NOT((input1 = '1'))) THEN
                        reg_fstate <= Incrementa_US_Compara_10;
                    ELSIF ((input1 = '1')) THEN
                        reg_fstate <= ZeraDS;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= IncrementaDS_Compara6;
                    END IF;
                WHEN ZeraDS =>
                    reg_fstate <= IncrementaUM_Compara10;
                WHEN IncrementaUM_Compara10 =>
                    IF (NOT((input1 = '1'))) THEN
                        reg_fstate <= Incrementa_US_Compara_10;
                    ELSIF ((input1 = '1')) THEN
                        reg_fstate <= ZeraUM;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= IncrementaUM_Compara10;
                    END IF;
                WHEN ZeraUM =>
                    reg_fstate <= IncrementaDM_Compara6;
                WHEN IncrementaDM_Compara6 =>
                    IF (NOT((input1 = '1'))) THEN
                        reg_fstate <= Incrementa_US_Compara_10;
                    ELSIF ((input1 = '1')) THEN
                        reg_fstate <= ZeraDM;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= IncrementaDM_Compara6;
                    END IF;
                WHEN ZeraDM =>
                    reg_fstate <= IncrementaUH_Compara4;
                WHEN IncrementaUH_Compara4 =>
                    IF ((input1 = '1')) THEN
                        reg_fstate <= ComparaDHCom2;
                    ELSIF (NOT((input1 = '1'))) THEN
                        reg_fstate <= ComparaUHCom10;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= IncrementaUH_Compara4;
                    END IF;
                WHEN ComparaDHCom2 =>
                    IF (NOT((input1 = '1'))) THEN
                        reg_fstate <= Incrementa_US_Compara_10;
                    ELSIF ((input1 = '1')) THEN
                        reg_fstate <= ZeraDH_UH;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= ComparaDHCom2;
                    END IF;
                WHEN ZeraDH_UH =>
                    reg_fstate <= Incrementa_US_Compara_10;
                WHEN ComparaUHCom10 =>
                    IF (NOT((input1 = '1'))) THEN
                        reg_fstate <= Incrementa_US_Compara_10;
                    ELSIF ((input1 = '1')) THEN
                        reg_fstate <= ZeraUH;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= ComparaUHCom10;
                    END IF;
                WHEN ZeraUH =>
                    reg_fstate <= IncrementaDH;
                WHEN IncrementaDH =>
                    reg_fstate <= Incrementa_US_Compara_10;
                WHEN OTHERS => 
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;