program FIBS;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function fib(n:integer): integer;
begin
    if (n <= 2) then
        fib := 1
    else
        fib := fib(n-1) + fib(n-2);
end;

var
    i, iterations:integer;

begin
writeln('github.com/lenamode');
writeln('Hey you, this is a program written for @duck over at C16.');
writeln('How many fibbonaci numbers would you like to print?');
readln(iterations);
    for i := 1 to iterations do
        write(fib(i), ', ');
    writeln('...');
    readln;
end.
