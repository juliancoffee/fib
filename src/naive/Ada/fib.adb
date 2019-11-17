with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Command_line; use Ada.Command_line;

procedure Fib is
    N   : Integer := Integer'Value (Argument(1));
    Res : Integer;

    function Fibonacci (N: Positive) return Positive is
    begin
        if N < 3 then
            return 1;
        else
            return Fibonacci (N - 1) + Fibonacci (N - 2);
        end if;
    end Fibonacci;

begin
    Res := Fibonacci (N);
    Put (Res);
end Fib;
