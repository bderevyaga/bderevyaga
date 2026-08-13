# Fortran

## Install

```bash
apt-get update && apt-get install -y gfortran
```

## Version

```bash
gfortran --version
```

## Code

```fortran
program main
  use iso_fortran_env, only: int64
  implicit none
  integer(int64) :: n
  n = 100000000_int64
  print '(I0)', n * (n - 1_int64) / 2_int64
end program main
```

## Tests

```bash
gfortran -O3 main.f90 -o main && ./main
# 4999999950000000
```
