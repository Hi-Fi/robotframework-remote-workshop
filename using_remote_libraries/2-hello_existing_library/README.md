# Using existing library as remote

Especially when Jython is going to sunset (with Python 2), there's coming an issue where there might be a lot of libraries written with Java that still needs to be used, or multiple test suites that would require newer version of the library that supports only Python 3.

Easy answer would be to just move the runner to be with Python 3 (if now using Jython) to support those newer Python linbraries, but still the way to use old Java-based libraries is needed.

## Implementation

### Tasks

- 