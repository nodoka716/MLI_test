HEADER OPTIONS
C    SINDA Data generated with Thermal Desktop 6.2 Patch 13
C    Generated on Wed Jul  6 02:02:16 2022
C    From file: MLI_panel.dwg
C    Case Set: Case Set 1
C    TDUNITS,   Energy     = J
C    TDUNITS,   Time       = s
C    TDUNITS,   Temp       = K
C    TDUNITS,   Mass       = kg
C    TDUNITS,   Length     = mm
C    TDUNITS,   Orbit      = km
C    TDUNITS,   Pressure   = Pa
C    TDUNITS,   Force      = N
C    TDUNITS,   Angle      = Degrees
C    TDUNITS,   Volt       = volt
C    TDUNITS,   Current    = amp
C    DWG name:      MLI_panel.dwg
C    Thermophysical Property Database: TdThermo.tdp
C    Optical Property Database:        RcOptics.rco
C    Computer name: LAPTOP-IT6G9966
C    User name:     81903
C    Symbol Names, Evaluated values, Input Strings, Comments
C    hrBetaAngle          -30.          -30
C    hrEccen              0.            0
C    hrIllum              0.            0
C    hrMeanAnom           0.            0
C    hrPeriod             6052.41       6052.41              Always in current user units. If programming, use hrPeri...
C    hrPeriodSec          6052.41       6052.41
C    hrPos                0.            0
C    hrShadowEntry        121.9905      1.219905120850e+02  
C    hrShadowExit         238.0095      2.380094879151e+02  
C    hrSubSolarMeanAnom   6.348220e-12  6.34822e-12          -180 to 180
C    hrSubSolarTrueAnom   6.348220e-12  6.34822e-12          -180 to 180
C    hrTime               0.            0                    Always in current user units. If programming, use hrTime...
C    hrTimeSec            0.            0
C    hrTimeShadowEntry    2050.936      2.050936097861e+03  
C    hrTimeShadowEntrySec 2050.936      2.050936097861e+03  
C    hrTimeShadowExit     4001.48       4001.48
C    hrTimeShadowExitSec  4001.48       4001.48
C    hrTrueAnom           0.            0
C
HEADER REGISTER DATA
      INT:CH343 = 0 $ Num Cycles for Heater[HEATER1501]::343
      INT:CH344 = 0 $ Num Cycles for Heater[HEATER1509]::344
      INT:HT343 = 0 $ On Off for Heater[HEATER1501]::343
      INT:HT344 = 0 $ On Off for Heater[HEATER1509]::344
      HY343 = 0 $ Heater Capacity for Heater[HEATER1501]::343
      HY344 = 0 $ Heater Capacity for Heater[HEATER1509]::344
      OT343 = 0 $ On Time for Heater[HEATER1501]::343
      OT344 = 0 $ On Time for Heater[HEATER1509]::344
      PO343 = 0 $ Power for Heater[HEATER1501]::343
      PO344 = 0 $ Power for Heater[HEATER1509]::344
      SF343 = 0 $ Off Temperature for Heater[HEATER1501]::343
      SF344 = 0 $ Off Temperature for Heater[HEATER1509]::344
      SO343 = 0 $ On Temperature for Heater[HEATER1501]::343
      SO344 = 0 $ On Temperature for Heater[HEATER1509]::344
      ST343 = 0 $ Sense Temperature for Heater[HEATER1501]::343
      ST344 = 0 $ Sense Temperature for Heater[HEATER1509]::344
      TP343 = 0 $ Total Power for Heater[HEATER1501]::343
      TP344 = 0 $ Total Power for Heater[HEATER1509]::344
      XP343 = 0 $ SS Proportional for Heater[HEATER1501]::343
      XP344 = 0 $ SS Proportional for Heater[HEATER1509]::344
HEADER OUTPUT CALLS, GLOBAL
C Case Set Prop Generated Code

      CALL TPRINT('ALL')
      IF(NSOL .GT. 1 ) THEN
          IF(TIMEN .GE. TIMEND) THEN
              CALL SAVE('ALL',0)
          ELSE
              CALL SAVE('TR',0)
          ENDIF
      ELSE IF( LOOPCT .GT. 0 ) THEN
          CALL SAVE('ALL',0)
      ENDIF

HEADER NODE DATA, HEATER1501
HEADER VARIABLES 1, HEATER1501
C
C Heater[HEATER1501]::343
C
      HY343 = 3.
      PO343 = 3.
      IF( NSOL .LE. 1 ) THEN
          T__TD =   1. * MINUS_Y.T1501
          ST343 = T__TD
          O__TD = 273.15 $ ON TEMP
          F__TD = 283.15 $ OFF TEMP
          D__TD = F__TD - O__TD
          IF( T__TD .LT. F__TD .AND. D__TD .NE. 0. ) THEN
              X__TD = (F__TD - T__TD)/(D__TD)
              IF( X__TD .GT. 1. ) X__TD = 1.
          ELSE
              X__TD = 0.
          ENDIF
          X__TD = XP343 + ( X__TD - XP343 ) * 0.05
          IF( X__TD .LT. .001 ) X__TD = 0.
          IF( X__TD .GT. .999 ) X__TD = 1.
          PO343 = PO343 * X__TD 
          XP343 = X__TD
              MINUS_Y.Q1501 = MINUS_Y.Q1501 + PO343 * 1.
      ELSE
          T__TD =   1. * MINUS_Y.T1501
          ST343 = T__TD
          O__TD = 273.15 $ ON TEMP
          F__TD = 283.15 $ OFF TEMP
          IF( T__TD .LT. O__TD .OR.
     +       (HT343 .EQ. 1 .AND. T__TD .LT. F__TD ) ) THEN
              IF( HT343 .EQ. 0 ) CH343 = 1 + CH343
              HT343 = 1
              MINUS_Y.Q1501 = MINUS_Y.Q1501 + PO343 * 1.
          ELSE
              HT343 = 0
              PO343 = 0.
          ENDIF
      ENDIF
      SO343 = O__TD
      SF343 = F__TD
HEADER VARIABLES 2, HEATER1501
      IF( HT343 .EQ. 1 ) THEN
          OT343 = OT343 + DTIMEU
          TP343 = TP343 + DTIMEU * PO343
      ENDIF
HEADER NODE DATA, HEATER1509
HEADER VARIABLES 1, HEATER1509
C
C Heater[HEATER1509]::344
C
      HY344 = 10.
      PO344 = 10.
      IF( NSOL .LE. 1 ) THEN
          T__TD =   1. * MINUS_Y.T1509
          ST344 = T__TD
          O__TD = 273.15 $ ON TEMP
          F__TD = 278.15 $ OFF TEMP
          D__TD = F__TD - O__TD
          IF( T__TD .LT. F__TD .AND. D__TD .NE. 0. ) THEN
              X__TD = (F__TD - T__TD)/(D__TD)
              IF( X__TD .GT. 1. ) X__TD = 1.
          ELSE
              X__TD = 0.
          ENDIF
          X__TD = XP344 + ( X__TD - XP344 ) * 0.05
          IF( X__TD .LT. .001 ) X__TD = 0.
          IF( X__TD .GT. .999 ) X__TD = 1.
          PO344 = PO344 * X__TD 
          XP344 = X__TD
              MINUS_Y.Q1509 = MINUS_Y.Q1509 + PO344 * 1.
      ELSE
          T__TD =   1. * MINUS_Y.T1509
          ST344 = T__TD
          O__TD = 273.15 $ ON TEMP
          F__TD = 278.15 $ OFF TEMP
          IF( T__TD .LT. O__TD .OR.
     +       (HT344 .EQ. 1 .AND. T__TD .LT. F__TD ) ) THEN
              IF( HT344 .EQ. 0 ) CH344 = 1 + CH344
              HT344 = 1
              MINUS_Y.Q1509 = MINUS_Y.Q1509 + PO344 * 1.
          ELSE
              HT344 = 0
              PO344 = 0.
          ENDIF
      ENDIF
      SO344 = O__TD
      SF344 = F__TD
HEADER VARIABLES 2, HEATER1509
      IF( HT344 .EQ. 1 ) THEN
          OT344 = OT344 + DTIMEU
          TP344 = TP344 + DTIMEU * PO344
      ENDIF
HEADER NODE DATA, HEATLOAD1
HEADER VARIABLES 0, HEATLOAD1
C Heat Load[HEATLOAD1]::347
      KIKI1.Q101 = KIKI1.Q101 + 3.
HEADER NODE DATA, KIKI1
            101,    293.15,    813.417
HEADER NODE DATA, KIKI2
            102,    293.15,    813.417
HEADER NODE DATA, KIKI3
            103,    293.15,    4524.956
HEADER NODE DATA, MAIN
HEADER CONDUCTOR DATA, MAIN
C Contact - Face Contactor[MAIN][0]::31E
            1,    KIKI1.101,    MINUS_Y.1503,    14.4
            2,    KIKI1.101,    MINUS_Y.1506,    7.2
C Contact - Face Contactor[MAIN][0]::31D
C Contact - Face Contactor[MAIN][0]::31E
            3,    KIKI1.101,    MINUS_Y.1509,    20.4
C Contact - Face Contactor[MAIN][0]::31E
            4,    KIKI2.102,    MINUS_Y.1501,    28.8
            5,    KIKI2.102,    MINUS_Y.1502,    14.4
            6,    KIKI2.102,    MINUS_Y.1503,    14.4
            7,    KIKI2.102,    MINUS_Y.1504,    14.4
            8,    KIKI2.102,    MINUS_Y.1505,    7.2
            9,    KIKI2.102,    MINUS_Y.1506,    7.2
            10,    KIKI2.102,    MINUS_Y.1507,    28.8
            11,    KIKI2.102,    MINUS_Y.1508,    14.4
C Contact - Face Contactor[MAIN][0]::31C
C Contact - Face Contactor[MAIN][0]::31E
            12,    KIKI2.102,    MINUS_Y.1509,    20.4
C Contact - Face Contactor[MAIN][0]::31B
C Contact - Face Contactor[MAIN][0]::31F
            13,    KIKI3.103,    MINUS_Y.1501,    51.3
C Contact - Face Contactor[MAIN][0]::31F
            14,    KIKI3.103,    MINUS_Y.1502,    14.4
            15,    KIKI3.103,    MINUS_Y.1503,    28.8
            16,    KIKI3.103,    MINUS_Y.1504,    14.4
            17,    KIKI3.103,    MINUS_Y.1505,    7.2
            18,    KIKI3.103,    MINUS_Y.1506,    14.4
            19,    KIKI3.103,    MINUS_Y.1507,    28.8
            20,    KIKI3.103,    MINUS_Y.1508,    14.4
            21,    KIKI3.103,    MINUS_Y.1509,    28.8
C Contact - Edge Contactor[MAIN][0]::315
C Contact - Edge Contactor[MAIN][0]::31A
            22,    MINUS_X.1401,    MINUS_Y.1507,    0.096
            23,    MINUS_X.1401,    MINUS_Y.1508,    0.048
            24,    MINUS_X.1401,    MINUS_Y.1509,    0.096
C Contact - Edge Contactor[MAIN][0]::315
C Contact - Edge Contactor[MAIN][0]::316
            25,    MINUS_X.1401,    MINUS_Z.1601,    0.168
C Contact - Edge Contactor[MAIN][0]::315
C Contact - Edge Contactor[MAIN][0]::317
            26,    MINUS_X.1401,    PLUS_Y.1201,    0.24
C Contact - Edge Contactor[MAIN][0]::315
C Contact - Edge Contactor[MAIN][0]::318
            27,    MINUS_X.1401,    PLUS_Z.1301,    0.168
            28,    MINUS_Y.1501,    MINUS_Y.1502,    0.1386667
            29,    MINUS_Y.1501,    MINUS_Y.1504,    0.1386667
C Contact - Edge Contactor[MAIN][0]::316
C Contact - Edge Contactor[MAIN][0]::31A
            30,    MINUS_Y.1501,    MINUS_Z.1601,    0.096
C Contact - Edge Contactor[MAIN][0]::319
C Contact - Edge Contactor[MAIN][0]::31A
            31,    MINUS_Y.1501,    PLUS_X.1101,    0.096
            32,    MINUS_Y.1502,    MINUS_Y.1503,    0.1386667
            33,    MINUS_Y.1502,    MINUS_Y.1505,    0.06933334
C Contact - Edge Contactor[MAIN][0]::319
C Contact - Edge Contactor[MAIN][0]::31A
            34,    MINUS_Y.1502,    PLUS_X.1101,    0.048
            35,    MINUS_Y.1503,    MINUS_Y.1506,    0.1386667
C Contact - Edge Contactor[MAIN][0]::319
C Contact - Edge Contactor[MAIN][0]::31A
            36,    MINUS_Y.1503,    PLUS_X.1101,    0.096
C Contact - Edge Contactor[MAIN][0]::318
C Contact - Edge Contactor[MAIN][0]::31A
            37,    MINUS_Y.1503,    PLUS_Z.1301,    0.096
            38,    MINUS_Y.1504,    MINUS_Y.1505,    0.06933334
            39,    MINUS_Y.1504,    MINUS_Y.1507,    0.1386667
C Contact - Edge Contactor[MAIN][0]::316
C Contact - Edge Contactor[MAIN][0]::31A
            40,    MINUS_Y.1504,    MINUS_Z.1601,    0.048
            41,    MINUS_Y.1505,    MINUS_Y.1506,    0.06933334
            42,    MINUS_Y.1505,    MINUS_Y.1508,    0.06933334
            43,    MINUS_Y.1506,    MINUS_Y.1509,    0.1386667
C Contact - Edge Contactor[MAIN][0]::318
C Contact - Edge Contactor[MAIN][0]::31A
            44,    MINUS_Y.1506,    PLUS_Z.1301,    0.048
            45,    MINUS_Y.1507,    MINUS_Y.1508,    0.1386667
C Contact - Edge Contactor[MAIN][0]::316
C Contact - Edge Contactor[MAIN][0]::31A
            46,    MINUS_Y.1507,    MINUS_Z.1601,    0.096
            47,    MINUS_Y.1508,    MINUS_Y.1509,    0.1386667
C Contact - Edge Contactor[MAIN][0]::318
C Contact - Edge Contactor[MAIN][0]::31A
            48,    MINUS_Y.1509,    PLUS_Z.1301,    0.096
C Contact - Edge Contactor[MAIN][0]::316
C Contact - Edge Contactor[MAIN][0]::319
            49,    MINUS_Z.1601,    PLUS_X.1101,    0.168
C Contact - Edge Contactor[MAIN][0]::316
C Contact - Edge Contactor[MAIN][0]::317
            50,    MINUS_Z.1601,    PLUS_Y.1201,    0.24
C Contact - Edge Contactor[MAIN][0]::317
C Contact - Edge Contactor[MAIN][0]::319
            51,    PLUS_X.1101,    PLUS_Y.1201,    0.24
C Contact - Edge Contactor[MAIN][0]::318
C Contact - Edge Contactor[MAIN][0]::319
            52,    PLUS_X.1101,    PLUS_Z.1301,    0.168
C Contact - Edge Contactor[MAIN][0]::317
C Contact - Edge Contactor[MAIN][0]::318
            53,    PLUS_Y.1201,    PLUS_Z.1301,    0.24
HEADER NODE DATA, MINUS_X
            1401,    293.15,    68.94241
HEADER NODE DATA, MINUS_Y
            1501,    293.15,    63.03306
            1502,    293.15,    31.51653
            1503,    293.15,    63.03306
            1504,    293.15,    31.51653
            1505,    293.15,    15.75827
            1506,    293.15,    31.51653
            1507,    293.15,    63.03306
            1508,    293.15,    31.51653
            1509,    293.15,    63.03306
HEADER NODE DATA, MINUS_Z
            1601,    293.15,    68.94241
HEADER NODE DATA, MLI
            1,    293.15,    98.48916
HEADER NODE DATA, MLI_Y
HEADER CONDUCTOR DATA, MLI_Y
C Contact - Face Contactor[MLI_Y][0]::3B1
            1,    MINUS_Y.1501,    MLI.1,    11.52
            2,    MINUS_Y.1502,    MLI.1,    5.76
            3,    MINUS_Y.1503,    MLI.1,    11.52
            4,    MINUS_Y.1504,    MLI.1,    5.76
            5,    MINUS_Y.1505,    MLI.1,    2.88
            6,    MINUS_Y.1506,    MLI.1,    5.76
            7,    MINUS_Y.1507,    MLI.1,    11.52
            8,    MINUS_Y.1508,    MLI.1,    5.76
            9,    MINUS_Y.1509,    MLI.1,    11.52
HEADER NODE DATA, PLUS_X
            1101,    293.15,    68.94241
HEADER NODE DATA, PLUS_Y
            1201,    293.15,    98.48916
HEADER NODE DATA, PLUS_Z
            1301,    293.15,    68.94241
HEADER NODE DATA, SPACE
            -1,    2.73,    -1.0
HEADER SUBROUTINE
      SUBROUTINE TDHTR
C     This routine is to hold heaters at their midpoint temps
C     for steady state solutions.
      CALL COMMON
      RETURN
      END
      SUBROUTINE TDREL
C     This routine is to release heaters for transient runs
C     for steady state solutions.
      CALL COMMON
F     CHARACTER*128 TEMP_LINE
      CALL HNQCAL('ALL')
      WRITE(NOUT,*) 'Heater Steady State Q Values:'
F     IF( ISBUILT( 'HEATER1501' ) ) THEN
F     CALL OUTLOG( 'Heater[HEATER1501]::343:' )
F     CALL OUTLOG( '    Steady State Proportional Heater Power Required:' )
F     WRITE(TEMP_LINE,*) '        ', PO343, 'W'
F     CALL OUTLOG( TEMP_LINE )
          O__TD = 273.15 $ ON TEMP
F         T__TD =   1. * T(INTNOD('MINUS_Y', 1501))
F     IF( T__TD .LT. O__TD ) THEN
F         CALL OUTLOG( '    WARNING::Sense Temp Less Than On Temp' )
F         WRITE(TEMP_LINE,*) '        Sense=', T__TD, '    On Temp=', O__TD
F         CALL OUTLOG( TEMP_LINE )
F     ENDIF
F     ENDIF
F     IF( ISBUILT( 'HEATER1509' ) ) THEN
F     CALL OUTLOG( 'Heater[HEATER1509]::344:' )
F     CALL OUTLOG( '    Steady State Proportional Heater Power Required:' )
F     WRITE(TEMP_LINE,*) '        ', PO344, 'W'
F     CALL OUTLOG( TEMP_LINE )
          O__TD = 273.15 $ ON TEMP
F         T__TD =   1. * T(INTNOD('MINUS_Y', 1509))
F     IF( T__TD .LT. O__TD ) THEN
F         CALL OUTLOG( '    WARNING::Sense Temp Less Than On Temp' )
F         WRITE(TEMP_LINE,*) '        Sense=', T__TD, '    On Temp=', O__TD
F         CALL OUTLOG( TEMP_LINE )
F     ENDIF
F     ENDIF
F     RETURN
F     END
F     SUBROUTINE TDHTOT
C     This routine prints out heater ontime and cycle summaries
      CALL COMMON
F     IF( ISBUILT( 'HEATER1501' ) ) THEN
F     write(nout,*) 'Heater Summary for : ',
F    +'Heater[HEATER1501]::343'
F     write(nout,*) '    On Time:     ', OT343, 's'
F     write(nout,*) '    Num Cycles:  ', CH343
F     write(nout,*) '    Total Energy: ', TP343, 'J'
F     write(nout,*) '    On Temp:  ', 273.15
F     write(nout,*) '    Off Temp: ', 283.15
F     write(nout,*) '    Power:    ', 3.
F     ENDIF
F     IF( ISBUILT( 'HEATER1509' ) ) THEN
F     write(nout,*) 'Heater Summary for : ',
F    +'Heater[HEATER1509]::344'
F     write(nout,*) '    On Time:     ', OT344, 's'
F     write(nout,*) '    Num Cycles:  ', CH344
F     write(nout,*) '    Total Energy: ', TP344, 'J'
F     write(nout,*) '    On Temp:  ', 273.15
F     write(nout,*) '    Off Temp: ', 278.15
F     write(nout,*) '    Power:    ', 10.
F     ENDIF
F     RETURN
F     END
F     SUBROUTINE TDHTRST
C     This routine resets heater statistics
      CALL COMMON
      HT343 = 0.
      OT343 = 0.
      CH343 = 0.
      TP343 = 0.
      XP343 = 0.

      HT344 = 0.
      OT344 = 0.
      CH344 = 0.
      TP344 = 0.
      XP344 = 0.

F     RETURN
F     END
F     SUBROUTINE TDPREBL
C     This routine executes logic before the build statement
M     CALL COMMON
F     RETURN
F     END
F     SUBROUTINE TDPOSTBL
C     This routine executes logic after the build statement
M     CALL COMMON
F     RETURN
F     END
F     SUBROUTINE TDPOSTSL
C     This routine executes logic after the solution
M     CALL COMMON
F     RETURN
F     END
F     SUBROUTINE BASEPLOT
      CALL COMMON
F     RETURN
F     END
