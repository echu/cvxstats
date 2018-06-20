# Statistics for CVXPY

Ideally, problems specified in [CVXPY][1] that are verified as convex
are solved every time. In practice, various issues can cause CVXPY to
fail to solve a problem. This project tries to provide a mechanism for
users of CVXPY to *upload* problem data for bug reports and for further
analysis.

We intend to maintain a suite of problems for which various (versions)
of solvers are run against and produce up-to-date benchmarking for
optimization problems in the wild.

For users of optimization, this would provide a quick way to see which
solvers are robust and which ones are fast. It would provide a quick
indicator, much like CI/CD does for software, as to whether one can
expect CVXPY to reasonable solve your problem.

For researchers in optimization, this would provide a repository of test
problems that are encountered in the real world.

Note that we adopt an **opt-in** model. If you wish to contribute a
failing problem, simply install cvxstats and upload your problem.

A future version may let you create a github issue with CVXPY directly.

## Installation
```
pip install cvxstats
```

## Usage
```
import cvxstats
import cvxpy

p = ...
cvxstats.upload(p)
```

## Website
Somewhere...

[1]: https://github.com/cvxgrp/cvxpy
