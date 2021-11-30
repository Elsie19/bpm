## BPM
BPM will attempt to solve the issue of the absence of a PDM (package dependency manager, like cargo) for bash.

### To make a library
Create a git repo that follows this structure:
```bash
src/main.sh
src/libs/
```
Repos will need to use the SemVer versioning system. `main.sh` should never output anything, but rather initialize functions and variables. This file will be sourced. If you use any libs in your program, put them in `src/libs/`. When you run `bpm compile`, all the files from `src/libs/` will be put into the final program, followed by `main.sh`, so be careful to only call on functions during `main.sh`, and only define functions in your libs.