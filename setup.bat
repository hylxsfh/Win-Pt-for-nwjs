Rem 此文件编码必须是GBK，否则在dos窗口中显示的中文会乱码


Rem 删除压缩文件
del App.nw

Rem 压缩文件(filelist.txt中保存的是主程序使用的文件，一般包括js、css等)
7z a -tzip App.zip @filelist.txt

Rem 改扩展名
ren App.zip App.nw

Rem 生成主程序
copy /b nw.exe+App.nw App.exe

Rem 删除中间过度文件
del App.nw

Rem 删除CDROM目录(此目录是你要保存主程序的地方)
del /q/a/f/s CDROM
rd /s/q CDROM

Rem 新建CDROM目录
mkdir CDROM

Rem 将主程序涉及的nw.js文件和主程序文件拷贝到CDROM目录
copy App.exe CDROM
copy d3dcompiler_47.dll cdrom\d3dcompiler_47.dll
copy ffmpegsumo.dll cdrom\ffmpegsumo.dll
copy icudtl.dat cdrom\icudtl.dat
copy libEGL.dll cdrom\libEGL.dll
copy libGLESv2.dll cdrom\libGLESv2.dll
copy nw.pak cdrom\nw.pak
copy pdf.dll cdrom\pdf.dll
copy nwjc.exe cdrom\nwjc.exe



