while [ -n "$1" ]
do
    case $1 in 
        -t ) shift
            ;;
        *) reason="$1"
    esac
    shift
done

if [ "$reason" == "compile" ]
then 
    which javac
else
    which java
fi
