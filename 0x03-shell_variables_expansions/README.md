# alx-system_engineering-devops

## 0-alias.sh
Creates an alias `ls` that runs `rm *`, which deletes all files in the current directory.

## 1-hello_user.sh
Prints "hello" followed by the current Linux username using the `whoami` command.

## 2-path.sh
Appends /action to the system PATH so it is the last directory checked when executing commands.

## 3-paths.sh
Counts the number of directories listed in the PATH environment variable by converting it into lines and using wc -l.

## 4-global_variables.sh
Lists all the environment (global) variables using the printenv command.

## 5-local_variables.sh
Displays all local variables, environment variables, and shell functions using the set command.

## 6-create_local_variable.sh
Creates a new local variable named BEST with the value "School".

## 7-create_global_variable.sh
Creates a new global (environment) variable named BEST with the value "School" using export.

## 8-true_knowledge.sh
Adds 128 to the value stored in the environment variable TRUEKNOWLEDGE and prints the result.
        ${TRUEKNOWLEDGE:-0} means:
                Use the value of TRUEKNOWLEDGE, but if it's unset, use 0.

## 9-divide_and_rule.sh
Divides the value of the environment variable POWER by the value of DIVIDE and prints the result.

## 10-love_exponent_breath.sh
Prints the result of raising the value of BREATH to the power of LOVE using Bash arithmetic.

## 11-binary_to_decimal.sh
Converts the binary number stored in the BINARY environment variable to decimal and prints it.

