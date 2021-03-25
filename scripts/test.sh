#!/bin/sh

# TODO: Investigate various flags.
# https://docs.pytest.org/en/reorganize-docs/new-docs/user/commandlineuseful.html
# TODO: What other flags might be useful?

# Run the test suite so that:
# --> -x: Stops on first error or failure
# --> -s: Outputs all diagnostic information
pipenv run pytest -x -s
