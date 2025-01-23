# vcpkg-test

This is a test project that uses [vcpkg](https://github.com/microsoft/vcpkg)
with CMake.

It uses only one dependency of [fmt](https://github.com/fmtlib/fmt) library.

## Prerequisites

- Bash
- Git
- CMake

## Build and run

To test it on Linux and macOS, clone this repo, run scripts from the
[scripts](./scripts) directory, and that's it.

```bash
git clone https://github.com/iamazeem/vcpkg-test && cd vcpkg-test
./scripts/install-vcpkg.sh
./scripts/install-vcpkg-deps.sh
./scripts/build-and-run.sh
```

For more details, take a look at [CI](.github/workflows/ci.yml).

## License

[MIT](./LICENSE)
