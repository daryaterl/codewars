-- # write your SQL statement here: you are given a table 'removeexclamationmarks' with column 's', 
-- return a table with column 's' and your result in a column named 'res'.
create or replace function RemoveExclamationMarks(s varchar)
returns varchar
language plpgsql
as
$$
declare
begin
  return translate(s, '!', '');
end;
$$;

select s, RemoveExclamationMarks(s) as res from removeexclamationmarks;