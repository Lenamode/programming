program fizzy;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure fizzbuzz;
var count, i:integer;
begin
count:=0;
  for i := 1 to 100 do
    begin
    count:=(count+1);
      if (count mod 15 = 0) then
        writeln(count,' Fizzbuzz!')
      else if (count mod 3 = 0) then
        writeln(count,' Fizz!')
      else if (count mod 5 = 0) then
        writeln(count,' Buzz!')
      else
     writeln(count);
    end;
    writeln('Thanks for checking the program out!');
    writeln('Press ENTER to close it down.');
    readln;
end;

procedure menuCall;
var option:string;
begin
  writeln('github.com/lenamode');
  writeln('Hey you, this is a Fizzbuzz Program written for @RJ over at C16.');
  writeln('Press "E" to start the program, or press "K" to see the key.');
  readln(option);
    if (option = UpCase('k')) then
      begin
      repeat
      writeln('If a number is a multiple of 15, the program will go:');
      writeln('Fizzbuzz!');
      writeln(' ');
      writeln('If a number is a multiple of 3, the program will go:');
      writeln('Fizz!');
      writeln(' ');
      writeln('If a number is a multiple of 5, the program will go:');
      writeln('Buzz!');
      writeln(' ');
      writeln('Press M to return to the menu.');
      readln(option);
      until (option = upCase('M'));
      menucall;
      end
    else if (option = upCase('E')) then
      fizzbuzz;
end;

begin
menuCall;
end.
