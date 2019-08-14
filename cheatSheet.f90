c this is a comment
c using this website: https://www.fortrantutorial.com/
c this is the library: http://www.silverfrost.com/ftn95-help/ftn95/idh_subroutines.aspx
c SilverFrost compiler is suggested and so is PLATO IDE

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
a = b + c
print *,a
end program bug
