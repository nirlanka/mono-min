Minimal C# codebase using Mono
==============================

Use this codebase as a minimal boilerplate for running quick C# scripts on Linux and OS X (or Windows).

## Prerequisites

1. Install Mono runtime and Mono development environment

## Using NuGet command

1. `sudo curl -o /usr/local/bin/nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe`
2. `alias nuget="mono /usr/local/bin/nuget.exe"`
3. Test nuget by running `nuget`

Then run e.g. `nuget install Newtonsoft.Json -OutputDirectory packages`

## Compile and run code

Run `run.sh` (give permissions for it with `chmod +x run.sh`.

## Editor support

### Sublime Text 3

1. Create a new build configuration from `Tools > Build System > New Build System...`
2. Quick run: `Quick CSharp.sublime-build`:

```json
{
  "selector"  : "source.cs",
  "cmd"       : "./run.sh",
  "shell"     : true,
}
``` 

or copy content from my [gist](https://gist.github.com/nirlanka/e1cee625e5ece26f4e5f2cd2bb0149fa)

## Thanks!

Let me know if there is anything I should fix/add/change.

:)