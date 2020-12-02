# Hello wordld -library

## Implementation

### Language and remote server selection

Select remote server for the language you can use, and check server's documentation.

Check if there're examples or libraries using that to get better picture how things are working with it.

### Tasks

Implement remote library with keyword `Hello` that returns 
- `Hello world` if called without arguments
- `Hello <argument>` if called with argument (like `Hello    remote user`)

## Testing

1. Start remote server
2. Run test case and expect it to pass `robot 1-hello-world.robot`
3. You can try also with `curl`:
```
curl --location --request POST 'localhost:8270' \
--header 'Content-Type: application/xml' \
--data-raw '<?xml version='\''1.0'\''?>
<methodCall>
    <methodName>run_keyword</methodName>
    <params>
        <param>
            <value><string>hello</string></value>
        </param>
        <param>
            <value><array><data>
                <value><string>localhost</string></value>
            </data></array></value>
        </param>
    </params>
</methodCall>'
```

## Help

If things seem to be not working for some reason, examples with various languages can help
at [here](https://github.com/Hi-Fi/rf-remote-library-demos/tree/robocon2020/basic_data_handling/src).

Also example implementation can be executed with Python:
- `pip3 install pipenv`
- `pipenv install`
- `pipenv run python 1-hello_world.py` 
