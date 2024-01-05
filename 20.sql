-- # write your SQL statement here: you are given a table 'kata'
-- with a column 'n', return a table with 'n' and your result 
-- stored in a column naed 'res'.
create or replace function valakas(n int)
returns int
language plpgsql
as
$$
declare
  counter int;
  answer int;
begin
  answer = 0;
  counter = 1;
  while counter <= n LOOP
    answer = answer + counter;
    counter = counter + 1;
  end LOOP;
  return answer;
end;
$$;

SELECT n, valakas(n) as res from kata;