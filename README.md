# Pusher-rootless

rootless version of [NoahSaso/Pusher](https://github.com/NoahSaso/Pusher)  
无根版本的 [NoahSaso/Pusher](https://github.com/NoahSaso/Pusher)

Support for iOS 15-16 / 支持 iOS 15-16

有汉化需求的fork一份自己做，勿提PR :)

## Building

This project uses Theos. A normal `make package` build produces the rootless
package. To build both rootless and roothide packages, install
[roothide/theos](https://github.com/roothide/theos) and run:

```sh
make package-all
```

The generated `.deb` files are placed in `packages/`.
