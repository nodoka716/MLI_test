       subroutine setexit(expnt)
      !DEC$ ATTRIBUTES DLLEXPORT::setexit
      common /exfunc/ ex_pnt
      data ex_pnt /0/
      integer expnt, ex_pnt
      ex_pnt = expnt
      return
      end
      subroutine myexit(stat)
      integer stat
      common /exfunc/ ex_pnt
      integer ex_pnt
      pointer (ex_pnt,pext)
      integer, external :: pext
      if(ex_pnt .eq. 0) then
         call exit(stat)
      endif
      call pext(stat)
      return
      end
      subroutine checkexit()
      use exitflag_MOD
      if(exitflag .ne. 0) call ABNORMNOSAVE('EXIT KEY',0,'EXIT KEY')
      return
      end

      MODULE USERREGISTER_MOD
      REAL, POINTER ::          HY343,HY344,OT343,OT344,PO343,PO344,SF343,SF344,SO343,SO344,ST343,ST344,TP343,TP344,XP343,XP344
      INTEGER, POINTER ::       CH343,CH344,HT343,HT344
      REAL,   POINTER :: ATEST,BTEST,CTEST,DTEST,ETEST,FTEST,GTEST,HTEST,OTEST,PTEST,QTEST,RTEST,STEST,TTEST,UTEST,VTEST,WTEST,XTEST
     +,YTEST,ZTEST,A__TD,B__TD,C__TD,D__TD,E__TD,F__TD,G__TD,H__TD,O__TD,P__TD,Q__TD,R__TD,S__TD,T__TD,U__TD,V__TD,W__TD,X__TD,Y__TD
     +,Z__TD,ATEST_DP,BTEST_DP,CTEST_DP,DTEST_DP,ETEST_DP,FTEST_DP,GTEST_DP,HTEST_DP,OTEST_DP,PTEST_DP,QTEST_DP,RTEST_DP,STEST_DP
     +,TTEST_DP,UTEST_DP,VTEST_DP,WTEST_DP,XTEST_DP,YTEST_DP,ZTEST_DP,A__TD_DP,B__TD_DP,C__TD_DP,D__TD_DP,E__TD_DP,F__TD_DP,G__TD_DP
     +,H__TD_DP,O__TD_DP,P__TD_DP,Q__TD_DP,R__TD_DP,S__TD_DP,T__TD_DP,U__TD_DP,V__TD_DP,W__TD_DP,X__TD_DP,Y__TD_DP,Z__TD_DP,ATEST_SP
     +,BTEST_SP,CTEST_SP,DTEST_SP,ETEST_SP,FTEST_SP,GTEST_SP,HTEST_SP,OTEST_SP,PTEST_SP,QTEST_SP,RTEST_SP,STEST_SP,TTEST_SP,UTEST_SP
     +,VTEST_SP,WTEST_SP,XTEST_SP,YTEST_SP,ZTEST_SP
      INTEGER,POINTER ::  ITEST,JTEST,KTEST,LTEST,MTEST,NTEST,I__TD,J__TD,K__TD,L__TD,M__TD,N__TD,ITEST_DP,JTEST_DP,KTEST_DP
     +,LTEST_DP,MTEST_DP,NTEST_DP,I__TD_DP,J__TD_DP,K__TD_DP,L__TD_DP,M__TD_DP,N__TD_DP,ITEST_SP,JTEST_SP,KTEST_SP,LTEST_SP,MTEST_SP
     +,NTEST_SP
      END MODULE
      subroutine setptr(pntrs)
      INTEGER pntrs
      !DEC$ ATTRIBUTES DLLEXPORT::setptr
      call setfpntr(pntrs)
      return
      end
      SUBROUTINE SETUSERREG
      !DEC$ ATTRIBUTES DLLEXPORT::SETUSERREG
      USE REGDAT_MOD
      USE USERREGISTER_MOD
      USE CPADIMS_MOD
      CALL INITCSR
      CH343 => IRGVAL(       1)
      CH344 => IRGVAL(       2)
      HT343 => IRGVAL(       3)
      HT344 => IRGVAL(       4)
      HY343 => REGVAL(       1)
      HY344 => REGVAL(       2)
      OT343 => REGVAL(       3)
      OT344 => REGVAL(       4)
      PO343 => REGVAL(       5)
      PO344 => REGVAL(       6)
      SF343 => REGVAL(       7)
      SF344 => REGVAL(       8)
      SO343 => REGVAL(       9)
      SO344 => REGVAL(      10)
      ST343 => REGVAL(      11)
      ST344 => REGVAL(      12)
      TP343 => REGVAL(      13)
      TP344 => REGVAL(      14)
      XP343 => REGVAL(      15)
      XP344 => REGVAL(      16)
      ATEST => RUSERC(   1 )
      BTEST => RUSERC(   2 )
      CTEST => RUSERC(   3 )
      DTEST => RUSERC(   4 )
      ETEST => RUSERC(   5 )
      FTEST => RUSERC(   6 )
      GTEST => RUSERC(   7 )
      HTEST => RUSERC(   8 )
      ITEST => NUSERC(   9 )
      JTEST => NUSERC(  10 )
      KTEST => NUSERC(  11 )
      LTEST => NUSERC(  12 )
      MTEST => NUSERC(  13 )
      NTEST => NUSERC(  14 )
      OTEST => RUSERC(  15 )
      PTEST => RUSERC(  16 )
      QTEST => RUSERC(  17 )
      RTEST => RUSERC(  18 )
      STEST => RUSERC(  19 )
      TTEST => RUSERC(  20 )
      UTEST => RUSERC(  21 )
      VTEST => RUSERC(  22 )
      WTEST => RUSERC(  23 )
      XTEST => RUSERC(  24 )
      YTEST => RUSERC(  25 )
      ZTEST => RUSERC(  26 )
      A__TD => RUSERC(  27 )
      B__TD => RUSERC(  28 )
      C__TD => RUSERC(  29 )
      D__TD => RUSERC(  30 )
      E__TD => RUSERC(  31 )
      F__TD => RUSERC(  32 )
      G__TD => RUSERC(  33 )
      H__TD => RUSERC(  34 )
      I__TD => NUSERC(  35 )
      J__TD => NUSERC(  36 )
      K__TD => NUSERC(  37 )
      L__TD => NUSERC(  38 )
      M__TD => NUSERC(  39 )
      N__TD => NUSERC(  40 )
      O__TD => RUSERC(  41 )
      P__TD => RUSERC(  42 )
      Q__TD => RUSERC(  43 )
      R__TD => RUSERC(  44 )
      S__TD => RUSERC(  45 )
      T__TD => RUSERC(  46 )
      U__TD => RUSERC(  47 )
      V__TD => RUSERC(  48 )
      W__TD => RUSERC(  49 )
      X__TD => RUSERC(  50 )
      Y__TD => RUSERC(  51 )
      Z__TD => RUSERC(  52 )
      ATEST_DP => RUSERC(  53 )
      BTEST_DP => RUSERC(  54 )
      CTEST_DP => RUSERC(  55 )
      DTEST_DP => RUSERC(  56 )
      ETEST_DP => RUSERC(  57 )
      FTEST_DP => RUSERC(  58 )
      GTEST_DP => RUSERC(  59 )
      HTEST_DP => RUSERC(  60 )
      ITEST_DP => NUSERC(  61 )
      JTEST_DP => NUSERC(  62 )
      KTEST_DP => NUSERC(  63 )
      LTEST_DP => NUSERC(  64 )
      MTEST_DP => NUSERC(  65 )
      NTEST_DP => NUSERC(  66 )
      OTEST_DP => RUSERC(  67 )
      PTEST_DP => RUSERC(  68 )
      QTEST_DP => RUSERC(  69 )
      RTEST_DP => RUSERC(  70 )
      STEST_DP => RUSERC(  71 )
      TTEST_DP => RUSERC(  72 )
      UTEST_DP => RUSERC(  73 )
      VTEST_DP => RUSERC(  74 )
      WTEST_DP => RUSERC(  75 )
      XTEST_DP => RUSERC(  76 )
      YTEST_DP => RUSERC(  77 )
      ZTEST_DP => RUSERC(  78 )
      A__TD_DP => RUSERC(  79 )
      B__TD_DP => RUSERC(  80 )
      C__TD_DP => RUSERC(  81 )
      D__TD_DP => RUSERC(  82 )
      E__TD_DP => RUSERC(  83 )
      F__TD_DP => RUSERC(  84 )
      G__TD_DP => RUSERC(  85 )
      H__TD_DP => RUSERC(  86 )
      I__TD_DP => NUSERC(  87 )
      J__TD_DP => NUSERC(  88 )
      K__TD_DP => NUSERC(  89 )
      L__TD_DP => NUSERC(  90 )
      M__TD_DP => NUSERC(  91 )
      N__TD_DP => NUSERC(  92 )
      O__TD_DP => RUSERC(  93 )
      P__TD_DP => RUSERC(  94 )
      Q__TD_DP => RUSERC(  95 )
      R__TD_DP => RUSERC(  96 )
      S__TD_DP => RUSERC(  97 )
      T__TD_DP => RUSERC(  98 )
      U__TD_DP => RUSERC(  99 )
      V__TD_DP => RUSERC( 100 )
      W__TD_DP => RUSERC( 101 )
      X__TD_DP => RUSERC( 102 )
      Y__TD_DP => RUSERC( 103 )
      Z__TD_DP => RUSERC( 104 )
      ATEST_SP => RUSERC( 105 )
      BTEST_SP => RUSERC( 106 )
      CTEST_SP => RUSERC( 107 )
      DTEST_SP => RUSERC( 108 )
      ETEST_SP => RUSERC( 109 )
      FTEST_SP => RUSERC( 110 )
      GTEST_SP => RUSERC( 111 )
      HTEST_SP => RUSERC( 112 )
      ITEST_SP => NUSERC( 113 )
      JTEST_SP => NUSERC( 114 )
      KTEST_SP => NUSERC( 115 )
      LTEST_SP => NUSERC( 116 )
      MTEST_SP => NUSERC( 117 )
      NTEST_SP => NUSERC( 118 )
      OTEST_SP => RUSERC( 119 )
      PTEST_SP => RUSERC( 120 )
      QTEST_SP => RUSERC( 121 )
      RTEST_SP => RUSERC( 122 )
      STEST_SP => RUSERC( 123 )
      TTEST_SP => RUSERC( 124 )
      UTEST_SP => RUSERC( 125 )
      VTEST_SP => RUSERC( 126 )
      WTEST_SP => RUSERC( 127 )
      XTEST_SP => RUSERC( 128 )
      YTEST_SP => RUSERC( 129 )
      ZTEST_SP => RUSERC( 130 )
      RETURN
      END
       SUBROUTINE SOR0001
        RETURN
        END
       SUBROUTINE SOR0002
        RETURN
        END
       SUBROUTINE SOR0003
        RETURN
        END
       SUBROUTINE SOR0004
        RETURN
        END
       SUBROUTINE SOR0005
        RETURN
        END
       SUBROUTINE SOR0006
        RETURN
        END
       SUBROUTINE SOR0007
        RETURN
        END
       SUBROUTINE SOR0008
        RETURN
        END
       SUBROUTINE SOR0009
        RETURN
        END
       SUBROUTINE SOR0010
        RETURN
        END
       SUBROUTINE SOR0011
        RETURN
        END
       SUBROUTINE SOR0012
        RETURN
        END
       SUBROUTINE SOR0013
        RETURN
        END
       SUBROUTINE SOR0014
        RETURN
        END
       SUBROUTINE SOR0015
        RETURN
        END
       SUBROUTINE SOR0016
        RETURN
        END
       SUBROUTINE SOR0017
        RETURN
        END
       SUBROUTINE VA10001
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       HY343 = 3.0000000
       PO343 = 3.0000000
       IF ( NSOL .LE. 1 ) THEN
           T__TD = 1.0000000 * T(           5)
           ST343 = T__TD
           O__TD = 273.15000
           F__TD = 283.15000
           D__TD = F__TD - O__TD
           IF ( T__TD .LT. F__TD .AND. D__TD .NE. 0.0000000 ) THEN
               X__TD = ( F__TD - T__TD ) / ( D__TD )
               IF ( X__TD .GT. 1.0000000 ) X__TD = 1.0000000
           ELSE
               X__TD = 0.0000000
           ENDIF
           X__TD = XP343 + ( X__TD - XP343 ) * 5.00000000E-02
           IF ( X__TD .LT. 1.00000000E-03 ) X__TD = 0.0000000
           IF ( X__TD .GT. 0.99900000 ) X__TD = 1.0000000
           PO343 = PO343 * X__TD
           XP343 = X__TD
               Q(           5) = Q(           5) + PO343 * 1.0000000
       ELSE
           T__TD = 1.0000000 * T(           5)
           ST343 = T__TD
           O__TD = 273.15000
           F__TD = 283.15000
           IF ( T__TD .LT. O__TD .OR.
     + ( HT343 .EQ. 1 .AND. T__TD .LT. F__TD ) ) THEN
               IF ( HT343 .EQ. 0 ) CH343 = 1 + CH343
               HT343 = 1
               Q(           5) = Q(           5) + PO343 * 1.0000000
           ELSE
               HT343 = 0
               PO343 = 0.0000000
           ENDIF
       ENDIF
       SO343 = O__TD
       SF343 = F__TD
       CALL QVTEMP('HEATER1501')
       CALL GVTEMP('HEATER1501')
       CALL CVTEMP('HEATER1501')
       RETURN
       END
       SUBROUTINE VA10002
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       HY344 = 10.000000
       PO344 = 10.000000
       IF ( NSOL .LE. 1 ) THEN
           T__TD = 1.0000000 * T(          13)
           ST344 = T__TD
           O__TD = 273.15000
           F__TD = 278.15000
           D__TD = F__TD - O__TD
           IF ( T__TD .LT. F__TD .AND. D__TD .NE. 0.0000000 ) THEN
               X__TD = ( F__TD - T__TD ) / ( D__TD )
               IF ( X__TD .GT. 1.0000000 ) X__TD = 1.0000000
           ELSE
               X__TD = 0.0000000
           ENDIF
           X__TD = XP344 + ( X__TD - XP344 ) * 5.00000000E-02
           IF ( X__TD .LT. 1.00000000E-03 ) X__TD = 0.0000000
           IF ( X__TD .GT. 0.99900000 ) X__TD = 1.0000000
           PO344 = PO344 * X__TD
           XP344 = X__TD
               Q(          13) = Q(          13) + PO344 * 1.0000000
       ELSE
           T__TD = 1.0000000 * T(          13)
           ST344 = T__TD
           O__TD = 273.15000
           F__TD = 278.15000
           IF ( T__TD .LT. O__TD .OR.
     + ( HT344 .EQ. 1 .AND. T__TD .LT. F__TD ) ) THEN
               IF ( HT344 .EQ. 0 ) CH344 = 1 + CH344
               HT344 = 1
               Q(          13) = Q(          13) + PO344 * 1.0000000
           ELSE
               HT344 = 0
               PO344 = 0.0000000
           ENDIF
       ENDIF
       SO344 = O__TD
       SF344 = F__TD
       CALL QVTEMP('HEATER1509')
       CALL GVTEMP('HEATER1509')
       CALL CVTEMP('HEATER1509')
       RETURN
       END
       SUBROUTINE VA1_GLOBAL
       !DEC$ ATTRIBUTES DLLEXPORT::VA1_GLOBAL
       RETURN
       END
       SUBROUTINE VA1_GLOBAL_INIT
       !DEC$ ATTRIBUTES DLLEXPORT::VA1_GLOBAL_INIT
       RETURN
       END
       SUBROUTINE VA10003
       CALL QVTEMP('HEATLOAD1')
       CALL GVTEMP('HEATLOAD1')
       CALL CVTEMP('HEATLOAD1')
       RETURN
       END
       SUBROUTINE VA10004
       CALL QVTEMP('KIKI1')
       CALL GVTEMP('KIKI1')
       CALL CVTEMP('KIKI1')
       RETURN
       END
       SUBROUTINE VA10005
       CALL QVTEMP('KIKI2')
       CALL GVTEMP('KIKI2')
       CALL CVTEMP('KIKI2')
       RETURN
       END
       SUBROUTINE VA10006
       CALL QVTEMP('KIKI3')
       CALL GVTEMP('KIKI3')
       CALL CVTEMP('KIKI3')
       RETURN
       END
       SUBROUTINE VA10007
       CALL QVTEMP('MAIN')
       CALL GVTEMP('MAIN')
       CALL CVTEMP('MAIN')
       RETURN
       END
       SUBROUTINE VA10008
       CALL QVTEMP('MINUS_X')
       CALL GVTEMP('MINUS_X')
       CALL CVTEMP('MINUS_X')
       RETURN
       END
       SUBROUTINE VA10009
       CALL QVTEMP('MINUS_Y')
       CALL GVTEMP('MINUS_Y')
       CALL CVTEMP('MINUS_Y')
       RETURN
       END
       SUBROUTINE VA10010
       CALL QVTEMP('MINUS_Z')
       CALL GVTEMP('MINUS_Z')
       CALL CVTEMP('MINUS_Z')
       RETURN
       END
       SUBROUTINE VA10011
       CALL QVTEMP('PLUS_X')
       CALL GVTEMP('PLUS_X')
       CALL CVTEMP('PLUS_X')
       RETURN
       END
       SUBROUTINE VA10012
       CALL QVTEMP('PLUS_Y')
       CALL GVTEMP('PLUS_Y')
       CALL CVTEMP('PLUS_Y')
       RETURN
       END
       SUBROUTINE VA10013
       CALL QVTEMP('PLUS_Z')
       CALL GVTEMP('PLUS_Z')
       CALL CVTEMP('PLUS_Z')
       RETURN
       END
       SUBROUTINE VA10014
       CALL QVTEMP('SPACE')
       CALL GVTEMP('SPACE')
       CALL CVTEMP('SPACE')
       RETURN
       END
       SUBROUTINE VA10015
       CALL QVTEMP('C1A0')
       CALL GVTEMP('C1A0')
       CALL CVTEMP('C1A0')
       RETURN
       END
       SUBROUTINE VA10016
       CALL QVTEMP('C1A1')
       CALL GVTEMP('C1A1')
       CALL CVTEMP('C1A1')
       RETURN
       END
       SUBROUTINE VA10017
       CALL QVTEMP('C1A2')
       CALL GVTEMP('C1A2')
       CALL CVTEMP('C1A2')
       RETURN
       END
       SUBROUTINE VA20001
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       IF ( HT343 .EQ. 1 ) THEN
           OT343 = OT343 + DTIMEU  (   1)
           TP343 = TP343 + DTIMEU  (   1) * PO343
       ENDIF
       RETURN
       END
       SUBROUTINE VA20002
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       IF ( HT344 .EQ. 1 ) THEN
           OT344 = OT344 + DTIMEU  (   2)
           TP344 = TP344 + DTIMEU  (   2) * PO344
       ENDIF
       RETURN
       END
       SUBROUTINE VA2_GLOBAL
       !DEC$ ATTRIBUTES DLLEXPORT::VA2_GLOBAL
       RETURN
       END
       SUBROUTINE VA2_GLOBAL_INIT
       !DEC$ ATTRIBUTES DLLEXPORT::VA2_GLOBAL_INIT
       RETURN
       END
       SUBROUTINE VA20003
       RETURN
       END
       SUBROUTINE VA20004
       RETURN
       END
       SUBROUTINE VA20005
       RETURN
       END
       SUBROUTINE VA20006
       RETURN
       END
       SUBROUTINE VA20007
       RETURN
       END
       SUBROUTINE VA20008
       RETURN
       END
       SUBROUTINE VA20009
       RETURN
       END
       SUBROUTINE VA20010
       RETURN
       END
       SUBROUTINE VA20011
       RETURN
       END
       SUBROUTINE VA20012
       RETURN
       END
       SUBROUTINE VA20013
       RETURN
       END
       SUBROUTINE VA20014
       RETURN
       END
       SUBROUTINE VA20015
       RETURN
       END
       SUBROUTINE VA20016
       RETURN
       END
       SUBROUTINE VA20017
       RETURN
       END
       SUBROUTINE VA00003
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       Q(           1) = Q(           1) + 3.0000000
       CALL QVTIME('HEATLOAD1')
       CALL GVTIME('HEATLOAD1')
       CALL CVTIME('HEATLOAD1')
       RETURN
       END
       SUBROUTINE VA00015
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
      CALL LOADQ_C1A0_1655784858
       CALL QVTIME('C1A0')
       CALL GVTIME('C1A0')
       CALL CVTIME('C1A0')
       RETURN
       END
       SUBROUTINE VA0_GLOBAL
       !DEC$ ATTRIBUTES DLLEXPORT::VA0_GLOBAL
       RETURN
       END
       SUBROUTINE VA0_GLOBAL_INIT
       !DEC$ ATTRIBUTES DLLEXPORT::VA0_GLOBAL_INIT
       RETURN
       END
       SUBROUTINE VA00001
       CALL QVTIME('HEATER1501')
       CALL GVTIME('HEATER1501')
       CALL CVTIME('HEATER1501')
       RETURN
       END
       SUBROUTINE VA00002
       CALL QVTIME('HEATER1509')
       CALL GVTIME('HEATER1509')
       CALL CVTIME('HEATER1509')
       RETURN
       END
       SUBROUTINE VA00004
       CALL QVTIME('KIKI1')
       CALL GVTIME('KIKI1')
       CALL CVTIME('KIKI1')
       RETURN
       END
       SUBROUTINE VA00005
       CALL QVTIME('KIKI2')
       CALL GVTIME('KIKI2')
       CALL CVTIME('KIKI2')
       RETURN
       END
       SUBROUTINE VA00006
       CALL QVTIME('KIKI3')
       CALL GVTIME('KIKI3')
       CALL CVTIME('KIKI3')
       RETURN
       END
       SUBROUTINE VA00007
       CALL QVTIME('MAIN')
       CALL GVTIME('MAIN')
       CALL CVTIME('MAIN')
       RETURN
       END
       SUBROUTINE VA00008
       CALL QVTIME('MINUS_X')
       CALL GVTIME('MINUS_X')
       CALL CVTIME('MINUS_X')
       RETURN
       END
       SUBROUTINE VA00009
       CALL QVTIME('MINUS_Y')
       CALL GVTIME('MINUS_Y')
       CALL CVTIME('MINUS_Y')
       RETURN
       END
       SUBROUTINE VA00010
       CALL QVTIME('MINUS_Z')
       CALL GVTIME('MINUS_Z')
       CALL CVTIME('MINUS_Z')
       RETURN
       END
       SUBROUTINE VA00011
       CALL QVTIME('PLUS_X')
       CALL GVTIME('PLUS_X')
       CALL CVTIME('PLUS_X')
       RETURN
       END
       SUBROUTINE VA00012
       CALL QVTIME('PLUS_Y')
       CALL GVTIME('PLUS_Y')
       CALL CVTIME('PLUS_Y')
       RETURN
       END
       SUBROUTINE VA00013
       CALL QVTIME('PLUS_Z')
       CALL GVTIME('PLUS_Z')
       CALL CVTIME('PLUS_Z')
       RETURN
       END
       SUBROUTINE VA00014
       CALL QVTIME('SPACE')
       CALL GVTIME('SPACE')
       CALL CVTIME('SPACE')
       RETURN
       END
       SUBROUTINE VA00016
       CALL QVTIME('C1A1')
       CALL GVTIME('C1A1')
       CALL CVTIME('C1A1')
       RETURN
       END
       SUBROUTINE VA00017
       CALL QVTIME('C1A2')
       CALL GVTIME('C1A2')
       CALL CVTIME('C1A2')
       RETURN
       END
       SUBROUTINE SLLOG1
       !DEC$ ATTRIBUTES DLLEXPORT::SLLOG1
       RETURN
       END
       SUBROUTINE SLLOG2
       !DEC$ ATTRIBUTES DLLEXPORT::SLLOG2
       RETURN
       END
       SUBROUTINE SLLOG0
       !DEC$ ATTRIBUTES DLLEXPORT::SLLOG0
       RETURN
       END
       SUBROUTINE SOLOUT
       !DEC$ ATTRIBUTES DLLEXPORT::SOLOUT
       RETURN
       END
       SUBROUTINE RELOUT
       !DEC$ ATTRIBUTES DLLEXPORT::RELOUT
       RETURN
       END
       SUBROUTINE FL1_GLOBAL
       !DEC$ ATTRIBUTES DLLEXPORT::FL1_GLOBAL
       RETURN
       END
       SUBROUTINE FL1_GLOBAL_INIT
       !DEC$ ATTRIBUTES DLLEXPORT::FL1_GLOBAL_INIT
       RETURN
       END
       SUBROUTINE FL2_GLOBAL
       !DEC$ ATTRIBUTES DLLEXPORT::FL2_GLOBAL
       RETURN
       END
       SUBROUTINE FL2_GLOBAL_INIT
       !DEC$ ATTRIBUTES DLLEXPORT::FL2_GLOBAL_INIT
       RETURN
       END
       SUBROUTINE FL0_GLOBAL
       !DEC$ ATTRIBUTES DLLEXPORT::FL0_GLOBAL
       RETURN
       END
       SUBROUTINE FL0_GLOBAL_INIT
       !DEC$ ATTRIBUTES DLLEXPORT::FL0_GLOBAL_INIT
       RETURN
       END
       SUBROUTINE OPER
       !DEC$ ATTRIBUTES DLLEXPORT::OPER
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       CHARACTER*32 NBNAM( 999)
       CHARACTER*32 NFNAM( 999)
       CALL TDPREBL
       NBNAM(   1) = 'HEATER1501                      '
       NBNAM(   2) = 'HEATER1509                      '
       NBNAM(   3) = 'HEATLOAD1                       '
       NBNAM(   4) = 'KIKI1                           '
       NBNAM(   5) = 'KIKI2                           '
       NBNAM(   6) = 'KIKI3                           '
       NBNAM(   7) = 'MAIN                            '
       NBNAM(   8) = 'MINUS_X                         '
       NBNAM(   9) = 'MINUS_Y                         '
       NBNAM(  10) = 'MINUS_Z                         '
       NBNAM(  11) = 'PLUS_X                          '
       NBNAM(  12) = 'PLUS_Y                          '
       NBNAM(  13) = 'PLUS_Z                          '
       NBNAM(  14) = 'SPACE                           '
       NBNAM(  15) = 'C1A0                            '
       NBNAM(  16) = 'C1A1                            '
       NBNAM(  17) = 'C1A2                            '
       CALL BUILD ('DEFAULT                         ',  17, NBNAM)
       CALL TDPOSTBL
       CALL TDHTR
       CALL STEADY
       CALL TDREL
       CALL TRANSIENT
       CALL TDHTOT
       CALL TDPOSTSL
       RETURN
       END
       SUBROUTINE OUT_GLOBAL
       !DEC$ ATTRIBUTES DLLEXPORT::OUT_GLOBAL
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       CALL TPRINT('ALL')
       IF(NSOL.GT.1)THEN
           IF(TIMEN.GE.TIMEND)THEN
               CALL SAVE('ALL',0)
           ELSE
               CALL SAVE('TR',0)
           ENDIF
       ELSEIF(LOOPCT.GT.0)THEN
           CALL SAVE('ALL',0)
       ENDIF
       RETURN
       END
       SUBROUTINE OUT_GLOBAL_INIT
       !DEC$ ATTRIBUTES DLLEXPORT::OUT_GLOBAL_INIT
       RETURN
       END
       SUBROUTINE OUT0001
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0001
       RETURN
       END
       SUBROUTINE OUT0002
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0002
       RETURN
       END
       SUBROUTINE OUT0003
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0003
       RETURN
       END
       SUBROUTINE OUT0004
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0004
       RETURN
       END
       SUBROUTINE OUT0005
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0005
       RETURN
       END
       SUBROUTINE OUT0006
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0006
       RETURN
       END
       SUBROUTINE OUT0007
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0007
       RETURN
       END
       SUBROUTINE OUT0008
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0008
       RETURN
       END
       SUBROUTINE OUT0009
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0009
       RETURN
       END
       SUBROUTINE OUT0010
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0010
       RETURN
       END
       SUBROUTINE OUT0011
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0011
       RETURN
       END
       SUBROUTINE OUT0012
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0012
       RETURN
       END
       SUBROUTINE OUT0013
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0013
       RETURN
       END
       SUBROUTINE OUT0014
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0014
       RETURN
       END
       SUBROUTINE OUT0015
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0015
       RETURN
       END
       SUBROUTINE OUT0016
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0016
       RETURN
       END
       SUBROUTINE OUT0017
       !DEC$ ATTRIBUTES DLLEXPORT::OUT0017
       RETURN
       END
       SUBROUTINE TDHTR
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       RETURN
       END
       SUBROUTINE TDREL
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
      CHARACTER*128 TEMP_LINE
       CALL HNQCAL( 'ALL' )
       WRITE ( NOUT , * ) 'Heater Steady State Q Values:'
      IF( ISBUILT( 'HEATER1501' ) ) THEN
      CALL OUTLOG( 'Heater[HEATER1501]::343:' )
      CALL OUTLOG( '    Steady State Proportional Heater Power Required:' )
      WRITE(TEMP_LINE,*) '        ', PO343, 'W'
      CALL OUTLOG( TEMP_LINE )
           O__TD = 273.15000
          T__TD =   1. * T(INTNOD('MINUS_Y', 1501))
      IF( T__TD  .LT.  O__TD ) THEN
          CALL OUTLOG( '    WARNING::Sense Temp Less Than On Temp' )
          WRITE(TEMP_LINE,*) '        Sense=', T__TD, '    On Temp=', O__TD
          CALL OUTLOG( TEMP_LINE )
      ENDIF
      ENDIF
      IF( ISBUILT( 'HEATER1509' ) ) THEN
      CALL OUTLOG( 'Heater[HEATER1509]::344:' )
      CALL OUTLOG( '    Steady State Proportional Heater Power Required:' )
      WRITE(TEMP_LINE,*) '        ', PO344, 'W'
      CALL OUTLOG( TEMP_LINE )
           O__TD = 273.15000
          T__TD =   1. * T(INTNOD('MINUS_Y', 1509))
      IF( T__TD  .LT.  O__TD ) THEN
          CALL OUTLOG( '    WARNING::Sense Temp Less Than On Temp' )
          WRITE(TEMP_LINE,*) '        Sense=', T__TD, '    On Temp=', O__TD
          CALL OUTLOG( TEMP_LINE )
      ENDIF
      ENDIF
      RETURN
      END
      SUBROUTINE TDHTOT
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
      IF( ISBUILT( 'HEATER1501' ) ) THEN
      write(nout,*) 'Heater Summary for : ',
     +'Heater[HEATER1501]::343'
      write(nout,*) '    On Time:     ', OT343, 's'
      write(nout,*) '    Num Cycles:  ', CH343
      write(nout,*) '    Total Energy: ', TP343, 'J'
      write(nout,*) '    On Temp:  ', 273.15
      write(nout,*) '    Off Temp: ', 283.15
      write(nout,*) '    Power:    ', 3.
      ENDIF
      IF( ISBUILT( 'HEATER1509' ) ) THEN
      write(nout,*) 'Heater Summary for : ',
     +'Heater[HEATER1509]::344'
      write(nout,*) '    On Time:     ', OT344, 's'
      write(nout,*) '    Num Cycles:  ', CH344
      write(nout,*) '    Total Energy: ', TP344, 'J'
      write(nout,*) '    On Temp:  ', 273.15
      write(nout,*) '    Off Temp: ', 278.15
      write(nout,*) '    Power:    ', 10.
      ENDIF
      RETURN
      END
      SUBROUTINE TDHTRST
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
       HT343 = 0.0000000
       OT343 = 0.0000000
       CH343 = 0.0000000
       TP343 = 0.0000000
       XP343 = 0.0000000
       HT344 = 0.0000000
       OT344 = 0.0000000
       CH344 = 0.0000000
       TP344 = 0.0000000
       XP344 = 0.0000000
      RETURN
      END
      SUBROUTINE TDPREBL
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
      RETURN
      END
      SUBROUTINE TDPOSTBL
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
      RETURN
      END
      SUBROUTINE TDPOSTSL
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
      RETURN
      END
      SUBROUTINE BASEPLOT
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
      RETURN
      END
      RECURSIVE SUBROUTINE LOADQ_C1A0_1655784858
      USE BINARY_READER_MOD
       use sf_interfaces
       USE USERREGISTER_MOD
       USE USERCOMMONDATA
      INTEGER NVAR__TD
      REAL, ALLOCATABLE ::  DATA__TD(:)
      DATA NVAR__TD /-1/
      SAVE NVAR__TD, DATA__TD
      IF( NVAR__TD  .LT.  0 ) THEN
          ALLOCATE (DATA__TD(1635))
          CALL LOAD_BINARY_SINGLET_ARRAYS(
     +        'C1A0.hra_bin'
     +    , DATA__TD)
          NVAR__TD = 1
      ENDIF
      DATA__TD(1 + 45 + 1) =
     + A(3+1)
      CALL LOADQ('C1A0',1,2,
     +    DATA__TD(1+15),
     +    DATA__TD(1+30),
     +    DATA__TD(1),
     +    DATA__TD(1+45),
     + A(1) )
      RETURN
      END
       SUBROUTINE FLOGI0(MODNO)
       INTEGER MODNO
       !DEC$ ATTRIBUTES DLLEXPORT::FLOGI0
       RETURN
       END
       SUBROUTINE FLOGI1(MODNO)
       INTEGER MODNO
       !DEC$ ATTRIBUTES DLLEXPORT::FLOGI1
       RETURN
       END
       SUBROUTINE FLOGI2(MODNO)
       INTEGER MODNO
       !DEC$ ATTRIBUTES DLLEXPORT::FLOGI2
       RETURN
       END
       SUBROUTINE VARBL0(MODNO)
       INTEGER MODNO
       !DEC$ ATTRIBUTES DLLEXPORT::VARBL0
       IF(MODNO .EQ. 1)   THEN
                CALL VA00001
       ELSE IF(MODNO .EQ.         2)   THEN
                CALL VA00002
       ELSE IF(MODNO .EQ.         3)   THEN
                CALL VA00003
       ELSE IF(MODNO .EQ.         4)   THEN
                CALL VA00004
       ELSE IF(MODNO .EQ.         5)   THEN
                CALL VA00005
       ELSE IF(MODNO .EQ.         6)   THEN
                CALL VA00006
       ELSE IF(MODNO .EQ.         7)   THEN
                CALL VA00007
       ELSE IF(MODNO .EQ.         8)   THEN
                CALL VA00008
       ELSE IF(MODNO .EQ.         9)   THEN
                CALL VA00009
       ELSE IF(MODNO .EQ.        10)   THEN
                CALL VA00010
       ELSE IF(MODNO .EQ.        11)   THEN
                CALL VA00011
       ELSE IF(MODNO .EQ.        12)   THEN
                CALL VA00012
       ELSE IF(MODNO .EQ.        13)   THEN
                CALL VA00013
       ELSE IF(MODNO .EQ.        14)   THEN
                CALL VA00014
       ELSE IF(MODNO .EQ.        15)   THEN
                CALL VA00015
       ELSE IF(MODNO .EQ.        16)   THEN
                CALL VA00016
       ELSE IF(MODNO .EQ.        17)   THEN
                CALL VA00017
       END IF
       RETURN
       END
       SUBROUTINE VARBL1(MODNO)
       INTEGER MODNO
       !DEC$ ATTRIBUTES DLLEXPORT::VARBL1
       IF(MODNO .EQ. 1)   THEN
                CALL VA10001
       ELSE IF(MODNO .EQ.         2)   THEN
                CALL VA10002
       ELSE IF(MODNO .EQ.         3)   THEN
                CALL VA10003
       ELSE IF(MODNO .EQ.         4)   THEN
                CALL VA10004
       ELSE IF(MODNO .EQ.         5)   THEN
                CALL VA10005
       ELSE IF(MODNO .EQ.         6)   THEN
                CALL VA10006
       ELSE IF(MODNO .EQ.         7)   THEN
                CALL VA10007
       ELSE IF(MODNO .EQ.         8)   THEN
                CALL VA10008
       ELSE IF(MODNO .EQ.         9)   THEN
                CALL VA10009
       ELSE IF(MODNO .EQ.        10)   THEN
                CALL VA10010
       ELSE IF(MODNO .EQ.        11)   THEN
                CALL VA10011
       ELSE IF(MODNO .EQ.        12)   THEN
                CALL VA10012
       ELSE IF(MODNO .EQ.        13)   THEN
                CALL VA10013
       ELSE IF(MODNO .EQ.        14)   THEN
                CALL VA10014
       ELSE IF(MODNO .EQ.        15)   THEN
                CALL VA10015
       ELSE IF(MODNO .EQ.        16)   THEN
                CALL VA10016
       ELSE IF(MODNO .EQ.        17)   THEN
                CALL VA10017
       END IF
       RETURN
       END
       SUBROUTINE VARBL2(MODNO)
       INTEGER MODNO
       !DEC$ ATTRIBUTES DLLEXPORT::VARBL2
       IF(MODNO .EQ. 1)   THEN
                CALL VA20001
       ELSE IF(MODNO .EQ.         2)   THEN
                CALL VA20002
       ELSE IF(MODNO .EQ.         3)   THEN
                CALL VA20003
       ELSE IF(MODNO .EQ.         4)   THEN
                CALL VA20004
       ELSE IF(MODNO .EQ.         5)   THEN
                CALL VA20005
       ELSE IF(MODNO .EQ.         6)   THEN
                CALL VA20006
       ELSE IF(MODNO .EQ.         7)   THEN
                CALL VA20007
       ELSE IF(MODNO .EQ.         8)   THEN
                CALL VA20008
       ELSE IF(MODNO .EQ.         9)   THEN
                CALL VA20009
       ELSE IF(MODNO .EQ.        10)   THEN
                CALL VA20010
       ELSE IF(MODNO .EQ.        11)   THEN
                CALL VA20011
       ELSE IF(MODNO .EQ.        12)   THEN
                CALL VA20012
       ELSE IF(MODNO .EQ.        13)   THEN
                CALL VA20013
       ELSE IF(MODNO .EQ.        14)   THEN
                CALL VA20014
       ELSE IF(MODNO .EQ.        15)   THEN
                CALL VA20015
       ELSE IF(MODNO .EQ.        16)   THEN
                CALL VA20016
       ELSE IF(MODNO .EQ.        17)   THEN
                CALL VA20017
       END IF
       RETURN
       END
       SUBROUTINE QVTEMP(MODNAM)
       !DEC$ ATTRIBUTES DLLEXPORT::QVTEMP
       USE MODNAM_MOD
       INTEGER SERCHN
       CHARACTER*(*) MODNAM
       INTEGER MODNO
       MODNO = SERCHN(MODNAM,MROOT,MLLINK,MRLINK,MACT,MNAMES)
       IF(MODNO .EQ. 1)   THEN
                CALL SOR0001
       ELSE IF(MODNO .EQ.         2)   THEN
                CALL SOR0002
       ELSE IF(MODNO .EQ.         3)   THEN
                CALL SOR0003
       ELSE IF(MODNO .EQ.         4)   THEN
                CALL SOR0004
       ELSE IF(MODNO .EQ.         5)   THEN
                CALL SOR0005
       ELSE IF(MODNO .EQ.         6)   THEN
                CALL SOR0006
       ELSE IF(MODNO .EQ.         7)   THEN
                CALL SOR0007
       ELSE IF(MODNO .EQ.         8)   THEN
                CALL SOR0008
       ELSE IF(MODNO .EQ.         9)   THEN
                CALL SOR0009
       ELSE IF(MODNO .EQ.        10)   THEN
                CALL SOR0010
       ELSE IF(MODNO .EQ.        11)   THEN
                CALL SOR0011
       ELSE IF(MODNO .EQ.        12)   THEN
                CALL SOR0012
       ELSE IF(MODNO .EQ.        13)   THEN
                CALL SOR0013
       ELSE IF(MODNO .EQ.        14)   THEN
                CALL SOR0014
       ELSE IF(MODNO .EQ.        15)   THEN
                CALL SOR0015
       ELSE IF(MODNO .EQ.        16)   THEN
                CALL SOR0016
       ELSE IF(MODNO .EQ.        17)   THEN
                CALL SOR0017
       END IF
       RETURN
       END
       SUBROUTINE OUTCAL(MODNO)
       INTEGER MODNO
       !DEC$ ATTRIBUTES DLLEXPORT::OUTCAL
       IF(MODNO .EQ. 1)   THEN
                CALL OUT0001
       ELSE IF(MODNO .EQ.         2)   THEN
                CALL OUT0002
       ELSE IF(MODNO .EQ.         3)   THEN
                CALL OUT0003
       ELSE IF(MODNO .EQ.         4)   THEN
                CALL OUT0004
       ELSE IF(MODNO .EQ.         5)   THEN
                CALL OUT0005
       ELSE IF(MODNO .EQ.         6)   THEN
                CALL OUT0006
       ELSE IF(MODNO .EQ.         7)   THEN
                CALL OUT0007
       ELSE IF(MODNO .EQ.         8)   THEN
                CALL OUT0008
       ELSE IF(MODNO .EQ.         9)   THEN
                CALL OUT0009
       ELSE IF(MODNO .EQ.        10)   THEN
                CALL OUT0010
       ELSE IF(MODNO .EQ.        11)   THEN
                CALL OUT0011
       ELSE IF(MODNO .EQ.        12)   THEN
                CALL OUT0012
       ELSE IF(MODNO .EQ.        13)   THEN
                CALL OUT0013
       ELSE IF(MODNO .EQ.        14)   THEN
                CALL OUT0014
       ELSE IF(MODNO .EQ.        15)   THEN
                CALL OUT0015
       ELSE IF(MODNO .EQ.        16)   THEN
                CALL OUT0016
       ELSE IF(MODNO .EQ.        17)   THEN
                CALL OUT0017
       END IF
       RETURN
       END
       SUBROUTINE FASTFS
       RETURN
       END
       SUBROUTINE FLUSET(D,A)
       REAL D
       REAL A(1)
       RETURN
       END
       LOGICAL FUNCTION RDOFLU(D,D2,I)
       REAL D,D2
       INTEGER I
       RDOFLU = .FALSE.
       RETURN
       END
       SUBROUTINE FLUSLV(D,D1,A,A1,*)
       REAL D,D1
       REAL A(1),A1(1)
       RETURN
       END
       SUBROUTINE PREFLO(A,A1,A2)
       REAL A(1),A1(1),A2(1)
       RETURN
       END
       SUBROUTINE FLUINF(A)
       REAL A(1)
       RETURN
       END
       SUBROUTINE UPDATF(A)
       REAL A(1)
       RETURN
       END
       SUBROUTINE FCNVRG(A,D,A2,A3)
       REAL A(1),A2(1),A3(1),D
       RETURN
       END
