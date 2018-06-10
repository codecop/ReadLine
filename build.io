AddonBuilder clone do(
    hasLib := libSearchPaths detect(path, Directory with(path) files detect(name containsSeq("libreadline")))
    if(hasLib == nil,
        writeln("ReadLine didn't found. Try again after installing it or check if it's available in PATH variable.")
    )

    dependsOnLib("readline")
    dependsOnHeader("readline/readline.h")
    dependsOnHeader("readline/history.h")
)
