# Detox

Doc containing info on how to configure detox to work, because its really painful :/
Most of the tutorials are old

---

> Keep in mind to have enough space for the whole emulator stuff and jest is not running in the background

1. Install detox-cli with ``bun install detox-cli --global``
2. Add detox as dependency for the project ``bun add -d detox``
3. Then go into the project and use ``bunx detox init``
4. Configure ``jest.config.js`` for the correct paths
5. Download emulator
6. Used correct names of emulators in ``.detoxrc.js``
7. Add ANDROID_SDK_ROOT to path