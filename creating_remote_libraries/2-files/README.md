# Handling files with remote libraries

Remote library implementations handle files as arguments at _receiving_ end. 
At XML-RPC it's defined that files are handled with Base64 encoding.
Thing is, that at the sending end the argument needs to be actual file object,
not e.g. location of the file (as that locations doesn't necessarily exist at 
the remote side).

## Implementation

### Tasks

Implement remote library with 2 keywords:
- `Send File` will get target path and file object as an argument, and write file to given path on remote server file system
- `Get File` will get (remote) file path as and argument, and returns the content of the file as string.

### Testing

1. Start implemented remote server
2. Run test case and expect it to pass `robot 2-files.robot`

### Notes

Within test cases file object should be binary file. Meaning file should read
with `Get Binary File` instead of `Get File`

## Help

If things seem to be not working for some reason, examples with various languages can help
at [here](https://github.com/Hi-Fi/rf-remote-library-demos/tree/robocon2020/basic_data_handling/src).

Also example implementation can be executed with Python:
- `pip3 install pipenv`
- `pipenv install`
- `pipenv run python 2-files.py` 
