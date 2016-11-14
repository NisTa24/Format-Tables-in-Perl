#!/usr/bin/perl
print "Enter the total number of Employees:";
$size=<STDIN>;

print "Enter the Names:\n";
for($i=0;$i<$size;$i++)
{
	$n[$i]=<STDIN>;
	chomp $n;
}
print "Enter the login email:\n";
for($i=0;$i<$size;$i++)
{
	$l[$i]=<STDIN>;
	chomp $l;
}
print "Enter the passwords:\n";
for($i=0;$i<$size;$i++)
{
	$p[$i]=<STDIN>;
	chomp $p;
}
format STDOUT_TOP =
				EXAMPLE

	Name			Login			Password
--------------------------------------------------------------------
.
format EMPLOYEE =
@<<<<<<<<<<<<<<<<<<<<	    @||||||||||||	@>>>>>>>>>>>>>>>>>>>>
$name				$login			$pass
.
select(STDOUT);
$~=EMPLOYEE;

$j=0;
foreach (@n){
	$name=$_;
	$login=$l[$j];
	$pass=$p[$j++];
	write;
}
