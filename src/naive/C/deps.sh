compiler="gcc"

while [ -n "$1" ]
do
    case $1 in 
        -t ) shift; compiler="$1"
            ;;
    esac
    shift
done

which $compiler
