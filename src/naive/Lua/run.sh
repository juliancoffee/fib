interpreter="lua"

while [ -n "$1" ]
do
    case $1 in 
        -t ) shift; interpreter="$1"
            ;;
        *) n="$1"
    esac
    shift
done

time "$interpreter" fib.lua "$n"
