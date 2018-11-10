#!/bin/bash
LOG_FILE=/var/log/arch-install.log

doPrintPrompt() {
	printf "[%s] $*" "$SCRIPT_NAME"
}

doPrint() {
	doPrintPrompt "$*\n"
}

./_arch-install.sh "$@" | tee "$LOG_FILE"

doPrint "For possible problems inspect ${LOG_FILE}!"
