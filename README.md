# Usage
`$ bash run.sh <number>`

# Examples
```bash
$ bash run.sh 10
$ bash run.sh 10 --fresh # same but recompile every time
```

# Limitations
Currently only works for naive version of fibonacci benchmarks that runs in
O(n!), repo also has loop version O(n) and matrix version O(log n) but
knowledge on how to run it was completely lost.

If I would done it today, I would probably prepare docker/nix files and also
made .gitignore not that bad.

Also beware that languages runs with different speed. 20-nth number for Zig is
literally nothing, but for Bash you'll wait for eternity to finish.
