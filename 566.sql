 SQL> select * from student;

        ID NAME                        AGE
---------- -------------------- ----------
       566 pravi                        19
       581 meghana                      20
       577 divya                        21
       553 lasya                        23
       555 santhosi                     25
       568 jayaram                      40
       535 teja                         34
       501 ravi                         16
       510 harsha                       10
       520 vara                         42

10 rows selected.

SQL> select * from student where id<566;

        ID NAME                        AGE
---------- -------------------- ----------
       553 lasya                        23
       555 santhosi                     25
       535 teja                         34
       501 ravi                         16
       510 harsha                       10
       520 vara                         42

6 rows selected.
SQL> select * from student where id>=566;

        ID NAME                        AGE
---------- -------------------- ----------
       566 pravi                        19
       581 meghana                      20
       577 divya                        21
       568 jayaram                      40
SQL> select name from student where age=19;

NAME
--------------------
pravi

SQL> select * from student where id=568 or id=566 or id=555;

        ID NAME                        AGE
---------- -------------------- ----------
       566 praveela                     19
       555 santhosi                     25
       568 jayaram                      40

SQL> select * from student where id=568 and id=566 and id=555;

no rows selected

SQL> select * from student where id=568 and not id=555;

        ID NAME                        AGE
---------- -------------------- ----------
       568 jayaram                      40


SQL> select name ,age from student;

NAME                        AGE
-------------------- ----------
pravi                        19
meghana                      20
divya                        21
lasya                        23
santhosi                     25
jayaram                      40
teja                         34
ravi                         16
harsha                       10
vara                         42

10 rows selected.

SQL> select * from student where id=535 and id=577;

no rows selected

SQL> select * from student where id=535 or id=577;

        ID NAME                        AGE
---------- -------------------- ----------
       577 divya                        21
       535 teja                         34

SQL> select * from student where not id=535;

        ID NAME                        AGE
---------- -------------------- ----------
       566 pravi                        19
       581 meghana                      20
       577 divya                        21
       553 lasya                        23
       555 santhosi                     25
       568 jayaram                      40
       501 ravi                         16
       510 harsha                       10
       520 vara                         42

9 rows selected.

SQL> select name from student union select e_name from emp;

NAME
--------------------
bindu
divya
harsha
jayaram
lasya
mahi
meghana
namratha
praveela
pravi
ravi

NAME
--------------------
santhosi
teja
vara

14 rows selected.

SQL> select name from student union all select e_name from emp;

NAME
--------------------
praveela
meghana
divya
lasya
santhosi
jayaram
teja
ravi
harsha
vara
namratha

NAME
--------------------
bindu
pravi
mahi

14 rows selected.

SQL> select count(age),name from student group by name ;

COUNT(AGE) NAME
---------- --------------------
         1 ravi
         1 vara
         1 lasya
         1 jayaram
         1 harsha
         1 namratha
         1 santhosi
         1 teja
         1 praveela
         1 meghana
         1 divya

11 rows selected.

SQL> select * from student ORDER BY name;

        ID NAME                        AGE
---------- -------------------- ----------
       577 divya                        21
       510 harsha                       10
       568 jayaram                      40
       553 lasya                        23
       581 meghana                      20
       595 namratha                     23
       566 pravi                        19
       501 ravi                         16
       555 santhosi                     25
       535 teja                         34
       520 vara                         42

11 rows selected.

SQL> select * from student ORDER BY name DESC;

        ID NAME                        AGE
---------- -------------------- ----------
       520 vara                         42
       535 teja                         34
       555 santhosi                     25
       501 ravi                         16
       566 pravi                        19
       595 namratha                     23
       581 meghana                      20
       553 lasya                        23
       568 jayaram                      40
       510 harsha                       10
       577 divya                        21

11 rows selected.

SQL> select * from student ORDER BY age DESC;

        ID NAME                        AGE
---------- -------------------- ----------
       520 vara                         42
       568 jayaram                      40
       535 teja                         34
       555 santhosi                     25
       553 lasya                        23
       595 namratha                     23
       577 divya                        21
       581 meghana                      20
       566 pravi                        19
       501 ravi                         16
       510 harsha                       10

11 rows selected.

SQL> select name from student where id IS NULL;

no rows selected

SQL> select name from student where id IS NOT NULL;

NAME
--------------------
pravi
meghana
divya
lasya
santhosi
jayaram
teja
ravi
harsha
vara
namratha

11 rows selected.

SQL> update student
  2  set name='praveela' where id=566;

1 row updated.

SQL> select * from student;

        ID NAME                        AGE
---------- -------------------- ----------
       566 praveela                     19
       581 meghana                      20
       577 divya                        21
       553 lasya                        23
       555 santhosi                     25
       568 jayaram                      40
       535 teja                         34
       501 ravi                         16
       510 harsha                       10
       520 vara                         42
       595 namratha                     23

11 rows selected.

SQL> select * from emp;

      E_ID E_NAME               DEPARTMENT                E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       201 bindu                maths                        90
f                        100000

       202 pravi                cse                          40
f                         20000

       203 mahi                 ece                          30
m                        300000


SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 E_ID                                               NUMBER(10)
 E_NAME                                             VARCHAR2(20)
 DEPARTMENT                                         VARCHAR2(20)
 E_AGE                                              NUMBER(10)
 GENDER                                             VARCHAR2(20)
 E_SALARY                                           NUMBER(10)

SQL> select *from team;

        ID TEAM_NAME            POSITION
---------- -------------------- ----------
       101 sans                 CSK
       102 houstan              k
       103 mahat                g

SQL> select *from player;

        ID PLAYER_NAME              HEIGHT
---------- -------------------- ----------
       101 virat                       153
       101 dhoni                       155
       103 rr                          122
       102 gg                          111
       102 ee                          232

SQL> desc team;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(4)
 TEAM_NAME                                 NOT NULL VARCHAR2(20)
 POSITION                                           VARCHAR2(10)

SQL> desc player;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(4)
 PLAYER_NAME                                        VARCHAR2(20)
 HEIGHT                                             NUMBER(3)

SQL> select *from player where player_name like('%i');

        ID PLAYER_NAME              HEIGHT
---------- -------------------- ----------
       101 dhoni                       155

SQL> select *from player where player_name like('v%');

        ID PLAYER_NAME              HEIGHT
---------- -------------------- ----------
       101 virat                       153

SQL> select player_name,height from player where id in('102','103');

PLAYER_NAME              HEIGHT
-------------------- ----------
rr                          122
gg                          111
ee                          232

SQL> CREATE TABLE Persons (
  2      ID int NOT NULL,
  3      LastName varchar(255) NOT NULL,
  4      FirstName varchar(255) NOT NULL,
  5      Age int
  6  );

Table created.

SQL> select *from team;

        ID TEAM_NAME            POSITION
---------- -------------------- ----------
       101 sans                 CSK
       102 houstan              k
       103 mahat                g

SQL> select *from player;

        ID PLAYER_NAME              HEIGHT
---------- -------------------- ----------
       101 virat                       153
       101 dhoni                       155
       103 rr                          122
       102 gg                          111
       102 ee                          232

SQL> select team.id,player.id from team,player where team.id=player.id;

        ID         ID
---------- ----------
       101        101
       101        101
       103        103
       102        102
       102        102

SQL> select team.team_name,player.player_name from team,player where team.id=player.id;

TEAM_NAME            PLAYER_NAME
-------------------- --------------------
sans                 virat
sans                 dhoni
mahat                rr
houstan              gg
houstan              ee

SQL> select team.team_name,player.player_name from  team inner join player on team.id=player.id;

TEAM_NAME            PLAYER_NAME
-------------------- --------------------
sans                 virat
sans                 dhoni
mahat                rr
houstan              gg
houstan              ee

SQL> select team.team_name,player.id from team left join player on team.id=player.id order by team.team_name;

TEAM_NAME                    ID
-------------------- ----------
houstan                     102
houstan                     102
mahat                       103
sans                        101
sans                        101

SQL> select team.team_name,player.id from team right join player on team.id=player.id order by team.team_name;

TEAM_NAME                    ID
-------------------- ----------
houstan                     102
houstan                     102
mahat                       103
sans                        101
sans                        101


