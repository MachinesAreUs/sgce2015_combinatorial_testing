Example for Pairwise Testing
============================

The `problem.yaml` file contains the definition of the test factors for a given testing problem. To find a minimal test case suite combining every possible pair of testing factors:

1. Install the pairwise gem:

    $ gem install pairwise

2. Run the intalled command with the problem definition as argument:

    $ pairwise problem.yaml

    <table>
    <tr><th>Browser</th><th>OS     </th><th>Video Memory</th></tr>
    <tr><td>Chrome </td><td>Windows</td><td>500Mb       </td></tr>
    <tr><td>Chrome </td><td>Linux  </td><td>1Gb         </td></tr>
    <tr><td>Chrome </td><td>OSX    </td><td>1Gb         </td></tr>
    <tr><td>Firefox</td><td>Windows</td><td>1Gb         </td></tr>
    <tr><td>Firefox</td><td>Linux  </td><td>500Mb       </td></tr>
    <tr><td>Firefox</td><td>OSX    </td><td>500Mb       </td></tr>
    </table>
