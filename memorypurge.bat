::Requires RAMMap
::https://docs.microsoft.com/en-us/sysinternals/downloads/rammap

@echo off
echo Emptying Working Sets
RAMMap.exe -Ew
echo Emptying System Working Sets
RAMMap.exe -Es
echo Emptying Modified Page List
RAMMap.exe -Em
echo Emptying Standby List
RAMMap.exe -Et
echo Emptying Priority 0 standby List
RAMMap.exe -E0
echo All Done.