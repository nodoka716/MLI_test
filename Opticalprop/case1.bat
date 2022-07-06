SETLOCAL
set path=C:\Program Files\Cullimore and Ring\Shared64;%PATH%
set path=C:\Program Files\Cullimore and Ring\Thermal Desktop;%PATH%
chdir "C:\Users\81903\Documents\Thermal Desktop\op3\MLItest_MSSmodel\Optical\"
"C:\Program Files\Cullimore and Ring\Thermal Desktop\radcad_cl64.exe" "External-orbit-RcOptics.rch" 1 Y 0
"C:\Program Files\Cullimore and Ring\Thermal Desktop\radcad_cl64.exe" "External-RcOptics.rck" 1 Y 0
