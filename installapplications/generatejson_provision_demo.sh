#!/bin/bash

COREDIR=$(/usr/bin/dirname $0)
JSON="${COREDIR}/demo.json"
GENERATEJSON="${COREDIR}/generatejson.py"
PKGSDIR="${COREDIR}/pkgs"
ROOTSCRIPTSDIR="${COREDIR}/scripts/root"
USERSCRIPTSDIR="${COREDIR}/scripts/user"
BASEURL="https://raw.githubusercontent.com/erikng/installapplicationsdemo/main/installapplications"
PKGSURL="${BASEURL}/pkgs"
ROOTSCRIPTSURL="${BASEURL}/scripts/root"
USERSCRIPTSURL="${BASEURL}/scripts/user"

/bin/chmod a+x ${GENERATEJSON}

${GENERATEJSON} \
--base-url ${BASEURL} \
--output ~/Desktop \
--item \
item-name='Preflight' \
item-path="${ROOTSCRIPTSDIR}/preflight.py" \
item-stage='preflight' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/preflight.py" \
script-do-not-wait=False \
--item \
item-name='Munki (LaunchD)' \
item-path="${PKGSDIR}/munkitools_launchd-3.0.3265.pkg" \
item-stage='setupassistant' \
item-type='package' \
item-url="https://github.com/erikng/installapplicationsdemo/blob/main/installapplications/pkgs/munkitools_launchd-3.0.3265.pkg?raw=true" \
script-do-not-wait=False \
--item \
item-name='Munki (Core)' \
item-path="${PKGSDIR}/munkitools_core-5.5.0.4360.pkg" \
item-stage='setupassistant' \
item-type='package' \
item-url="https://github.com/erikng/installapplicationsdemo/blob/main/installapplications/pkgs/munkitools_core-5.5.0.4360.pkg?raw=true" \
script-do-not-wait=False \
--item \
item-name='Munki (Python)' \
item-path="${PKGSDIR}/munkitools_python-3.9.5.4361.pkg" \
item-stage='setupassistant' \
item-type='package' \
item-url="https://github.com/erikng/installapplicationsdemo/blob/main/installapplications/pkgs/munkitools_python-3.9.5.4361.pkg?raw=true" \
script-do-not-wait=False \
--item \
item-name='Dockutil Python3' \
item-path="${PKGSDIR}/dockutil-3.0.pkg" \
item-stage='setupassistant' \
item-type='package' \
item-url="https://github.com/erikng/installapplicationsdemo/blob/main/installapplications/pkgs/dockutil-3.0.pkg?raw=true" \
script-do-not-wait=False \
--item \
item-name='hello' \
item-path="${PKGSDIR}/hello-0.0.2.06172021203518.pkg" \
item-stage='setupassistant' \
item-type='package' \
item-url="https://github.com/erikng/installapplicationsdemo/blob/main/installapplications/pkgs/hello-0.0.2.06172021203518.pkg?raw=true" \
script-do-not-wait=False \
--item \
item-name='hello User Launcher' \
item-path="${USERSCRIPTSDIR}/hello_user_launcher.py" \
item-stage='userland' \
item-type='userscript' \
item-url="${USERSCRIPTSURL}/hello_user_launcher.py" \
script-do-not-wait=False \
--item \
item-name='Caffeinate Machine' \
item-path="${ROOTSCRIPTSDIR}/caffeinate.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/caffeinate.py" \
script-do-not-wait=True \
--item \
item-name='Bless VM' \
item-path="${ROOTSCRIPTSDIR}/bless_vm.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/bless_vm.py" \
script-do-not-wait=False \
--item \
item-name='Munki Bootsrap' \
item-path="${ROOTSCRIPTSDIR}/munki_bootstrap.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/munki_bootstrap.py" \
script-do-not-wait=False \
--item \
item-name='Munki Auto Trigger' \
item-path="${ROOTSCRIPTSDIR}/munki_auto_trigger.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/munki_auto_trigger.py" \
script-do-not-wait=True \
--item \
item-name='Dockutil User' \
item-path="${USERSCRIPTSDIR}/dockutil.py" \
item-stage='userland' \
item-type='userscript' \
item-url="${USERSCRIPTSURL}/dockutil.py" \
script-do-not-wait=False \
--item \
item-name='Munki LaunchD Loader' \
item-path="${ROOTSCRIPTSDIR}/munki_launchd_loader.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/munki_launchd_loader.py" \
script-do-not-wait=False

/bin/mv ~/Desktop/bootstrap.json ${JSON}
