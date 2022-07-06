HEADER NODE DATA, C1A0
HEADER VARIABLES 0, C1A0
C  LOADQ is SINDA subroutine that simplifies the SINDA output
C  and speeds up SINDA preprocessing and compile time.
C  For transient routines, LOADQ interpolates at the current time
C  If there is 1 point in the time array, those values always used
C  If the orbit time starts at 0., the intepolation is cyclic.
C     Negative times will be adjusted via period before interpolation is done.
C  If the orbit time starts at != 0., strict time intepolation is done.
C     If time < first time, values are at the first time.
C     If time > last time, values are at the last time.
C  For steady state solutions, DTIMES controls whether the calculation
C  is the TIME averaged load (DTIMES=0.) or if interpolation is used.
C  LOADQ interpolates on the SINDA variable TIMEM.
C  The data is all stored in the array file, and the node
C  submodels and numbers are stored in CARRAY type data.
C  The arguments to LOADQ are:
C     Submodel name that contains the carray data
C     First carray number
C     Total number of carrays used
C     Storage array internally used for relative node numbers
C     Area array if data output as flux, set to zero if total absorbed
C     Array of steady state values
C     Time array
C     Scale array where heating rates can be scaled
C
F     CALL LOADQ_C1A0_1657040543
HEADER SUBROUTINE
F     RECURSIVE SUBROUTINE LOADQ_C1A0_1657040543
F     USE BINARY_READER_MOD
      CALL COMMON
F     INTEGER NVAR__TD
F     REAL, ALLOCATABLE ::  DATA__TD(:)
F     DATA NVAR__TD /-1/
F     SAVE NVAR__TD, DATA__TD
F     IF( NVAR__TD .LT. 0 ) THEN
F         ALLOCATE (DATA__TD(763))
F         CALL LOAD_BINARY_SINGLET_ARRAYS(
F    +        'C1A0.hra_bin'
F    +    , DATA__TD)
F         NVAR__TD = 1
F     ENDIF
F     DATA__TD(1 + 21 + 1) = 
M    +     C1A0.A(5+1)
F     CALL LOADQ('C1A0',1,2,
F    +    DATA__TD(1+7),
F    +    DATA__TD(1+14),
F    +    DATA__TD(1),
F    +    DATA__TD(1+21),
M    +    C1A0.A4)
F     RETURN
F     END
