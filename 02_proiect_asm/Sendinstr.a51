Name RutinaSendInstr;
Public sendInstr;
SendInstrSeg Segment Code;
RSEG SendInstrSeg;
Extrn Code (delay_1ms);
sendInstr:

setb P3.6;
acall delay_1ms;
cpl P3.6;
acall delay_1ms;

ret;
end;