c links
! using this website: https://www.fortrantutorial.com/ at basics (more data types - integer and character)

! learn more about variables: https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/chap02/var-type.html
! https://www.oc.nps.edu/~bird/oc3030_online/fortran/basics/basics.html

! functions and procedures: https://en.wikibooks.org/wiki/Fortran/Fortran_procedures_and_functions
! function explanation: https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/F90-Subprograms.pdf at 3rd slide

! tutorial vid: https://www.youtube.com/watch?v=__2UgFNYgf8 at 7:16
c links

! this is the library: http://www.silverfrost.com/ftn95-help/ftn95/idh_subroutines.aspx
! SilverFrost compiler is suggested and so is PLATO IDE

!!left side declares what the variable is and the right declares the name of the variable
!real :: is a real number
!integer :: can hold an integer
!complex :: can hold a complex number
!logical :: can hold a boolean
!character (len = 10) :: the variable is capable of holding a character string of certain length

!Variable names must be between 1 and 32 letters or numbers in length with the first character being a letter


!huge() returns the largest number of the variable's data type
!tiny() returns the smallest number of the variable's data type

program sum                         !name of program
!an example of a program structure  !comment
real :: answer,x,y                  !variable declaration
print *, 'Type two numbers'         !output
read *, x                           !input
read *, y                           !input
answer = x + y                      !arithmetic
print *, 'The total is ', answer    !output
end program sum                     !end of program

program io
real :: x,y,z
print *, 'Enter values for x, y, z'
read *, x,y,z
print *, 'The values you entered for z, y, x are: ',z,y,x
end program io

program bug !fix
!this program is full of errors
real :: a,b,c
read *,c
read *,b
a = b + c
print *,a
end program bug

!headspace analytical lang requirements: sql, hive, redshift, snowflake, Tableau server admin tasks, EMR, Athena, S3, python, R
!implied: work on experience with swift and app inventor
!!need a strong understanding of python, sql, R









































program practice
implicit none !checks and verifies that all variables are correctly set
!real :: i, a, b, c !commented but was uncommented originally
integer :: i, a, b, c
print *, 'What time is it? Type the minutes'
read *, i
print *, 'Wait a couple of minutes then type the time '
read *, a
IF (a > i) THEN
  b = a - i
ELSE 
print *, 'How old are you and your mom in years? '
read *, i, a
c = a - i
print *, 'The time difference was: ', b, ', The difference in age between you are your mom is: ', c
end program practice
