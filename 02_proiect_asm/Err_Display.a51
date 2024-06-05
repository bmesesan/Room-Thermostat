;Name RutinaErr_Display;
;Public Err_Display;



;Err_DisplaySeg Segment code
;RSEG Err_DisplaySeg;
;Extrn Code (sendInstr);

;Err_Display:
;setb P2.5;
;cpl P2.5;setez RS pe 0

;mov P3, #10001101b;setez pozitia corecta
;acall sendInstr;

;setb P2.5;
;mov P3, #01100101b;trimit e
;acall sendInstr;

;mov P3, #01110010b;trimit r
;acall sendInstr;

;ret;
end;