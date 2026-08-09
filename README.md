# Pusher-rootless-plus

An independently developed fork of [jzksnsjswkw/Pusher-rootless](https://github.com/jzksnsjswkw/Pusher-rootless).  

## New Features

- Add Telegram bot service
- Add roothide build and release packages

## Building

This project uses Theos. A normal `make package` build produces the rootless
package. To build both rootless and roothide packages, install
[roothide/theos](https://github.com/roothide/theos) and run:

```sh
make package-all
```

The generated `.deb` files are placed in `packages/`.
