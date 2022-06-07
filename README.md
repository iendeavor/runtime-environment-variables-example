# Runtime Environment Variables Example

## How it works

Instead of replacing environment variables during `docker build`, we can replace them during `docker run`. (see [./entrypoint.sh#L5](./entrypoint.sh#L5) for an example.)

## Running the example

```sh
git clone https://github.com/iendeavor/runtime-environment-variables-example.git

# We don't replace the environment variables in this step.
docker build -t runtime-environment-variables-example .

# We do replace the environment variables in this step.
docker run \
  --rm \
  --publish 80:80 \
  --env NAME=world \
  runtime-environment-variables-example

# Change the `--env` flag above to `--env NAME=<your-name>` and run the command again to see the effect.
```
