use siva;
# ascii can give num start=49,ualpa=65,lalpa=97 it can give only leftmost char value
select ascii('bkkB');
# it can give a binary number ex :- 8,4,2,1=1,1,0,0
select bin(12);
# it can give bit of the string ,it start with 8; 8*4=32
select bit_length('siva');
# it can give only number ,there can give the values of thst num
select char(65);
# it can give a length of string
 select char_length('siva');
 select length('siva');
 # it can add the strings
 select concat('siva',' friend of',' chinna');
 # it can add both strings and also a add string at medial of two str
 select concat_ws('123@','siva','gmail.com');
 # it can give a particular length in  string
 select ELT(1,'siva','is a','good','boy');
 select export_set(5,);
 #
 SELECT EXPORT_SET(5,'y','N',',',6 );
 # it can give index values of string
 SELECT field('siva', 'kavi', 'hello', 'of', 'siva');
 # it can aslo similar to field can give index number ,but in excution put all char in one string
 select find_in_set('kavi','rasul,siva,kavi,chinna');
 # it can add the decimal range of number
 select format(1234,5);
 # it cam give a hex values
 select hex(101);
 # it can add the particular position of string what we can give and length of str also remove 
select insert('hello everyone',6,1,' boy and girls ');
select instr('siva sankar','san\');
 
 

 
 
