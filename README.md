Minimal C# codebase using Mono
==============================

Use this codebase as a minimal boilerplate for running quick C# scripts on Linux and OS X (or Windows).

## Prerequisites

1. Install Mono runtime and Mono development environment
2. `sudo curl -o /usr/local/bin/nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe`
3. `alias nuget="mono /usr/local/bin/nuget.exe"`
4. Test nuget by running `nuget`

## Using NuGet command

e.g.

`nuget install Newtonsoft.Json -OutputDirectory packages`

## Compile and run code

1. `mcs app.cs && mono app.exe`
2. `mono app.exe`

or just run `run.sh`

## Compile with packages

```bash
mcs app.cs 
	/reference:packages/Newtonsoft.Json.12.0.3/lib/netstandard2.0/Newtonsoft.Json.dll
	/reference:[path-to-dll]
```

or change `run.sh` to fit this (give permissions for `run.sh` with `chmod +x ./run.sh`.

## Editor support

### Sublime Text 3

1. Create a new build configuration from `Tools > Build System > New Build System...`
2. Copy content from my [gist](https://gist.github.com/nirlanka/e1cee625e5ece26f4e5f2cd2bb0149fa) (or use following code:)

Quick run: `Quick CSharp.sublime-build`

```json
{
  "selector"  : "source.cs",
  "cmd"       : "./run.sh",
  "shell"     : true,
}
``` 

## Thanks!

Let me know if there is anything I should fix/add/change.

:)