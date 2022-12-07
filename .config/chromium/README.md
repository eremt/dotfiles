# [~](https://github.com/eremt/dotfiles)/[.config](https://github.com/eremt/dotfiles/tree/master/.config)/chromium

**Note**: `policies.json` lives in `/etc/chromium/policies/managed` but is tracked here and moved with the [install script]().

## Extensions
- [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
- [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
- [HTTPS Everywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp) (unfortunately [not supported](https://chromeenterprise.google/policies/?policy=HttpsOnlyMode) by `policies.json`)

## Security and privacy
- DNS over HTTPS with [quad9](https://www.quad9.net/)
- HTTPS Only (enabled but [not supported](https://chromeenterprise.google/policies/?policy=HttpsOnlyMode))
- Disable
  - telemetry
  - cookies
  - password manager
  - form history
