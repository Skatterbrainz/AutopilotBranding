:: Clean output directories
rmdir obj\Debug /s /q
rmdir bin\Debug /s /q

:: Compile and link
"%Wix%\bin\candle.exe" -out obj\Debug\ -ext ..\packages\PowerShellWixExtension.2.0.1\tools\lib\PowerShellWixExtension.dll Product.wxs
"%Wix%\bin\light.exe" -out bin\Debug\AutopilotBranding.msi -ext ..\packages\PowerShellWixExtension.2.0.1\tools\lib\PowerShellWixExtension.dll obj\Debug\Product.wixobj
