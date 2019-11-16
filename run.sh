rm -rf bin
mkdir bin

mcs one.cs -target:library -out:bin/one.dll

mcs app.cs /reference:bin/one.dll -out:bin/app.exe
# mcs app.cs
# mcs app.cs /reference:packages/Newtonsoft.Json.12.0.3/lib/netstandard2.0/Newtonsoft.Json.dll

mono bin/app.exe