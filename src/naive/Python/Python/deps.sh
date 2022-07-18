while [ -n "$1" ]
do
    case $1 in 
        -t ) shift; interpreter="$1"
            ;;
    esac
    shift
done

which "$interpreter"
