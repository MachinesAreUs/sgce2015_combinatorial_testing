Example for Pairwise Testing
============================

The `problem.yaml` file contains the definition of the test factors for a given testing problem. To find a minimal test case suite combining every possible pair of testing factors:

1. Install the pairwise gem:

    $ gem install pairwise

2. Run the intalled command with the problem definition as argument:

    $ pairwise problem.yaml

    | Browser | OS      | Video Memory |
    | Chrome  | Windows | 501Mb        |
    | Chrome  | Linux   | 1Gb          |
    | Chrome  | OSX     | 1Gb          |
    | Firefox | Windows | 1Gb          |
    | Firefox | Linux   | 500Mb        |
    | Firefox | OSX     | 500Mb        |
