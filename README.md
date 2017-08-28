# node-base-image
A Docker image that our various node.js services can be based on.

You can read the Dockerfile to see everything that it does. For fairly 'standard' apps, your Dockerfile should look like
this:

```Dockerfile
FROM rabblerouser/node-base
```

Yep, that's it.

You should probably also add `node_modules/` to your project's `.dockerignore` file, so that you get a clean
installation of dependencies when building the image, as opposed to mounting in whatever you installed on your host
system.
