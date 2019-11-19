compiler="native"

while [ -n "$1" ]
do
    case $1 in 
        -t ) shift; compiler="$1"
            ;;
        *)
    esac
    shift
done

if [ reason == "native" ]
then 
    which ghc
else
    which llvm-config
fi
