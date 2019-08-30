c links
! using this website: https://www.fortrantutorial.com/ at basics (more data types - integer and character)
! function explanation: https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/F90-Subprograms.pdf at 8th slide

! learn more about variables: https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/chap02/var-type.html
! basics review sheet: https://www.oc.nps.edu/~bird/oc3030_online/fortran/basics/basics.html

! check this out, robbie recommends: https://learnxinyminutes.com/docs/fortran95/
! fortran bible: https://www.fortran90.org/src/best-practices.html

! learning vids: https://www.youtube.com/playlist?list=PLNmACol6lYY5_S8I4K29V2oI95nOCzQU8 41 vids
! advanced vids: https://www.youtube.com/playlist?list=PLNmACol6lYY4wPUNCK03LOwVTBbca7Ix- 33 vids
! modern fortran https://www.youtube.com/playlist?list=PLOW1pykD9NwIeDKcNxngoKYYqT7seZ2Dp 10 vids

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

!spacing is not essential, but aesthetically pleasing for myself
program sum                       !name of program, can have arguments going into the program, similar to classes in java
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

! functions != programs
real function tDifference(n) !reads and returns a positive real integer, similar to methods
  implicit none !checks and verifies that all variables are correctly set
  integer :: i, a, b, c
  integer, intent(in) :: n     !takes in n and will not change the variable
  print *, 'How old are you and your sibling? Answer in that order '
  read *, i, a
  IF (a > i) THEN
    b = a - i
  ELSE 
    b = i - a
  print *, 'How old are you and your mom in years? Answer in that order '
  read *, i, a
  c = a - i
  print *, 'The age difference between you and your sibling was: ', b, 'The age difference between you are your mom is: ', c
  i = b + c
  tDifference = i ! returning a variable, if set multiple times, will return most recent setting of the variable
end program tDifference


integer function factorial(n)
  implicit none
  integer, intent(in) :: n !w/out intent(in), new variables will be declared, also cannot manipulate this var later on
  integer :: i, ans
  ans = 1
  do i = 1, n   !for loop
    ans = ans * 1
  end do
  factorial = ans ! will error if you do not return something
end function factorial
