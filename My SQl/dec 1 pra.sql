# 1 dec
# CHAR_LENGTH(), CHARACTER_LENGTH(), Length:
#This function is used to find the length of a word
select char_length('siva') as lenght_of_string;
select length('sai baba');
#CONCAT(): This function is used to add two words or strings.
select concat('siva',' is friend of ','chinna');
#CONCAT_WS(): This function is used to add two words or strings with a symbol as concatenating symbol.
select concat_ws('@','siva',' is friend of ','chinna');
#LCASE(), LOWER(): This functions is used to convert the given string into lower case.
select lcase('HELLO EVERYONE');
select lower('HELLO EVERYONE');
#UCASE(), UPPER(): This functions is used to make the string in upper case.
select ucase('hello everyone');
select upper('hello everyone');
#LTRIM(): This function is used to empty spaces present in left side from the original string.
SELECT length(LTRIM('   HELLO'));
#RTRIM(): This function is used to empty spaces present in right side from the original string.
SELECT length(RTRIM('HELLO   '));
#TRIM(): This function is used to empty spaces present in right side from the original string.
SELECT length(TRIM('   HELLO   '));
#LEFT(): This function is used to SELECT a sub string from the left of given size or character
select left('HELLO EVERYONE,HOW ARE YOU',10);
# RIGHT(): This function is used to SELECT a sub string from the right end of the given size.
select right('HELLO EVERYONE,HOW ARE YOU',10);
#LPAD(): This function is used to make the given string of the given size by adding the given symbol.
select lpad('sairam',9,'ome');
#RPAD(): This function is used to make the given string as long as the given size by adding the given symbol on the right.
select rpad('sairam',9,'ome');

#REVERSE(): This function is used to reverse a string.
select reverse('hello');
#SPACE(): This function is used to write the given number of spaces.
select length(space(7));
#SPACE(): This function is used to write the given number of spaces.
select replace('hello','e','l');
#REPEAT(): This function is used to write the given string again and again till the number of times mentioned.
SELECT REPEAT('sairam ', 2);
#LOCATE(),: This function is used to find the nth position of the given word in a string.
#LOCATE(substring, string, start)

SELECT LOCATE('om', 'om sri sai ram om sri sai ram',2);

#POSITION(): This function is used to find position of the first occurrence of the given alphabet.

SELECT POSITION('sai' IN 'Om Sri Sai ram om sri sai ram');


# INSTR(): This function is used to find the occurrence of an alphabet.
#SELECT instr(IN'Om Sri Sai ram om sri sai ram');


# SUBSTR(), SUBSTRING(), MID()
#The MID() function extracts a substring from a string (starting at any     position).
#MID(string, start, length)

select Mid('Skill Development Program', 7, 11);
SELECT SUBSTR('Skill Development Program', 15, 5);
SELECT SUBSTRING('Skill Development Program', 10, 30);


#FIND_IN_SET(): This function is used to find a symbol from a set of symbols.
SELECT FIND_IN_SET(‘b’, ‘a, b, c, d, e, f’);


#
#SUBSTRING_INDEX(): This function is used to find a sub string before the given symbol.
SELECT SUBSTRING_INDEX("om sri sai ram", " ", 3);
SELECT SUBSTRING_INDEX("Help ever, Hurt never", ",", 2);