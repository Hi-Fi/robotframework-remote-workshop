# Hide actual credentials when usign remote libraries

One big part of testing are the credentials that need to be used to get access to various test system (e.g. databases). Those can be put to version control (preferably encrypted format), but then each tester have those credentials locally, and there's big risk that those leak or are used to do things that are not valid.

One way to handle this is to have the credentials only at tha remove server. 

Note that by default remote servers doesn't offer authentication, so that needs to be handled separately. 

## Implementation

### Tasks

Implement remote library that contains hard coded username and password, and makes httpcall to `https://httpbin.org/basic-auth/<user>/<password>`.

- Keyword should be `Authenticate`. It has 2 optional argument: `username` and `password`
- If neither one is given, it should use `test` as value for both `username` and `password`
- Bonus: Make the default credentials configurable with environment variables

## Testing

## Help

Example implementation can be executed with Python:
- `pip3 install pipenv`
- `pipenv install`
- `pipenv run python 1-credentials.py` 

## Questions

- How remote server/libraries should be secured? Should it?
- How should credentials be injected to remote server?
