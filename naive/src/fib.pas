uses sysutils;

function fib(const n: int64): int64;
begin
  if n < 3 then
    fib := 1
  else
    fib := fib(n-1) + fib(n-2);
end;

begin
  Writeln(fib(StrToInt(ParamStr(1))));
end.
