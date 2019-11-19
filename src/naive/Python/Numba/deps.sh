flag=$(python -c "from importlib import util; print(bool(util.find_spec('numba')))")
if [ $flag == "True" ]
then
    exit 0
else
    exit 1
fi
