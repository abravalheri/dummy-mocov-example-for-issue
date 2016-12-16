# dummy-mocov-example-for-issue

Demonstrate errors when using [MOcov](https://github.com/MOcov/MOcov) and
the new class syntax.

## Usage

- Install [MOcov](https://github.com/MOcov/MOcov)
- Install [MOxunit](https://github.com/MOxUnit/MOxUnit)
- Execute `runtests` script

## Results

```
failure: parse error near line 1 of file /tmp/oct-QJBT47/AClass.m

  syntax error

>>> mocov_line_covered(1,'AClass.m',1,1);classdef AClass < handle
                                                ^

  test_AClass>test_one:6 (/home/vagrant/drafts/dummy-mocov-example-for-issue/tests/test_AClass.m)

--------------------------------------------------

FAILED (failure=1)
ans = 0
```
