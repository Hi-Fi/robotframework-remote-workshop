# Python 3 runner, Java libraries

If Robot Framework runner can be changed to Python 3 (because e.g. tests are running mainly at the CI or developers have environment available for Python), some existing libraries might still be wanted to be available because of e.g. own development or easier management of the dependencies (e.g. database drivers).

## Implementation

### Tasks

1. Run tests with Python, and utilize Java DB library
2. It's enough to get an error from connection
3. Bonus: start some database that has JDBC driver available, and make real things through the library.

### Hints

It might be easiest for local testing to start things with Maven, so there's no need to worry about classpath setting.

## Example

