SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> set serveroutput on verify off;
SQL> declare
  2  a number;
  3  b number;
  4  begin
  5  a :=10;
  6  b:=20;
  7  dbms_output.put_line('the value of a= '||a);
  8  end;
  9  /
the value of a= 10

PL/SQL procedure successfully completed.

SQL> declare
  2  a number;
  3  b number;
  4  c number;
  5  begin
  6  a :=10;
  7  b:=20;
  8  c :=30;
  9  dbms_output.put_line('a is greater');
 10  end;
 11  /
a is greater

PL/SQL procedure successfully completed.

SQL> declare
  2  a number;
  3  b number;
  4  c number;
  5  begin
  6  a :=10;
  7  b:=20;
  8  c :=30;
  9  if a>b then
 10  if a>c then
 11  dbms_output.put_line('a is greater');
 12  else dbms_output.put_line('c is greater');
 13  end if;
 14  elsif b>c then
 15  dbms_output.put_line('b is greater');
 16  else dbms_output.put_line('c is greater');
 17  end if;
 18  end;
 19  /
c is greater

PL/SQL procedure successfully completed.

SQL> declare
  2  a number;
  3  b number;
  4  begin
  5  a :=10;
  6  b:=5;
  7  if a>b then
  8  dbms_output.put_line('a is greater');
  9  else dbms_output.put_line('b is greater');
 10  end if;
 11  end;
 12  /
a is greater

PL/SQL procedure successfully completed.


SQL> declare
  2  i number;
  3  begin
  4  i:=1;
  5  loop
  6  dbms_output.put_line(i);
  7  i:=i+1;
  8  exit when i>6;
  9  end loop;
 10  end;
 11  /
1
2
3
4
5
6

PL/SQL procedure successfully completed.

SQL> declare
  2  i number;
  3  begin
  4  i:=2;
  5  while i<=10
  6  loop
  7  dbms_output.put_line(i);
  8  i:=i+2;
  9  end loop;
 10  end;
 11  /
2
4
6
8
10

PL/SQL procedure successfully completed.

SQL> declare
  2  i number;
  3  n number;
  4  fact number;
  5  begin
  6  i:=1;
  7  fact:=1;
  8  n:=&n;
  9  while i<=n
 10  loop
 11  fact:=fact*i;
 12  i:=i+1;
 13  dbms_output.put_line(fact);
 14  end loop;
 15  end;
 16  /
Enter value for n: 5
1
2
6
24
120

PL/SQL procedure successfully completed.

SQL> declare
  2  i number;
  3  n number;
  4  fact number;
  5  begin
  6  i:=1;
  7  fact:=1;
  8  n:=&n;
  9  while i<=n
 10  loop
 11  fact:=fact*i;
 12  i:=i+1;
 13  end loop;
 14  dbms_output.put_line(fact);
 15  end;
 16  /
Enter value for n: 5
120

PL/SQL procedure successfully completed.

SQL> declare
  2  i number;
  3  n number;
  4  begin
  5  i:=1;
  6  n:=&n;
  7  for i IN 1..7
  8  loop
  9  dbms_output.put_line(i);
 10  end loop;
 11  end;
 12  /
Enter value for n: 9
1
2
3
4
5
6
7

PL/SQL procedure successfully completed.

SQL> commit;

Commit complete.
