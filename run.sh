rm -rf bin
mkdir bin

cp /usr/local/share/dotnet/shared/Microsoft.NETCore.App/3.0.0/libhostpolicy.dylib bin/libhostpolicy.dylib

csc one.cs -target:library -out:bin/one.dll
# mcs one.cs -target:library -out:bin/one.dll

csc app.cs /reference:bin/one.dll -out:bin/app.exe
mcs app.cs /reference:bin/one.dll -out:bin/app.exe
# mcs app.cs
# mcs app.cs /reference:packages/Newtonsoft.Json.12.0.3/lib/netstandard2.0/Newtonsoft.Json.dll

dotnet -r:osx.10.14 bin/app.exe
# mono bin/app.exe