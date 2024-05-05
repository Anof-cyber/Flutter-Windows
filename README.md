# Flutter Windows SSL Pinning Bypass


## Detailed Article 
- https://medium.com/@Ano_F_/flutter-windows-thick-client-ssl-pinning-3c1134e9b827
### Frida

- https://github.com/Anof-cyber/Flutter-Windows/blob/main/Frida/Flutter-winows-SSL-Disable.js

```bash
frida -l Flutter-winows-SSL-Disable.js app-name.exe
```
Frida Codebase

```bash
frida --codeshare Anof-cyber/flutter-windows-ssl-pinning-bypass- -f app.exe
```


Demo APP 
- With Proxy Support - https://github.com/Anof-cyber/Flutter-Windows/tree/main/win_ssl_httpclient_no_config/build/windows/x64/runner/Release
- Without Proxy Support - https://github.com/Anof-cyber/Flutter-Windows/tree/main/win_ssl_httpclient_no_proxy/build/windows/x64/runner/Release

