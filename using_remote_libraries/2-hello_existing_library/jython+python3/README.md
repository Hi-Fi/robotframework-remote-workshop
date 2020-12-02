# Jython runner, Python 3 library

If Robot Framework is part of the application development within Maven or Gradle, it might be good to keep runner as is and just offer libraries remotely.

## Implementation

There's example pom.xml, that executes simple test case (with authentication).

It would be good to have a way to manage credentials a bit more secure way, and 
[robotframework-crypto](https://pypi.org/project/robotframework-crypto/) would 
help with that. But it's not available for Python 2

### Tasks 

- Offer robotframework-crypto as remote library
- Modify pom.xml in a way that user doesn't need to "know" about library
    - Note: PoC-kind is enough (that works locally)

## Testing

1. `mvn verify`

## Help

## Questions

- What issues this approach has?
- What kind of changes needed in locat setups, CI, CD etc.?
- Why log clearing isnt's working (hint: Listener interface and XML-RPC)
- How remote library initialization is and should be done?