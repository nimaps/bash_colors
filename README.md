
# Bash Color Module (Prewritten ANSI/VT100 Control sequences)
By adding this module to your bash script you will be able to print formatted text(colored, bold, blinking, hidden, ...).  

## Importing the module
Using the shell built-in command "source" you can import all the variables and "formatting sequences" to your bash scripts.
```
source "/path/to/bash_cl.sh"
```
Now all the provided variables and function can be used inside the script.

## How to use

Depending on the situation there are multiple ways and syntaxes for using the script.

You can use the following syntaxes:
```
echo -e "The word ${CL_YELLOW}banana${CL_NORMAL} in this text is going to be yellow"
```
Or
```
echo -e ${CL_YELLOW}
echo "This whole sentence is yellow"
echo -e ${CL_NORMAL}
```
Notice:
- The "-e" switch needs to be used with echo since we need to escape sequences  


If you want to combine formats (for instance red and bold) you can use the following syntax:  
(Notice that you don't need the CL prefix for colors in this syntax)
```
echo -e ${CL}${RED}${CLA}${BOLD}${CLE}
echo "This sentence is red and bold"
echo -e ${CL_NORMAL}
```
You can also simplify the above commands using functions:
```
echo_cl_rb "This sentence is going to be red and bold
```
