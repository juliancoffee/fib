#!/usr/bin/env fish

function fib 
    if [ $argv[1] -lt 3 ]
        echo 1
        return
    end
    math (fib (math $argv[1]-1))+(fib (math $argv[1]-2))
end

fib $argv[1]
