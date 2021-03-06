#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# bat-extras | Copyright (C) 2019 eth-p | MIT License
#
# Repository: https://github.com/eth-p/bat-extras
# Issues:     https://github.com/eth-p/bat-extras/issues
# -----------------------------------------------------------------------------
EXECUTABLE_BAT="bat"
EXECUTABLE_GIT="git"
PROGRAM="$(basename "$0" .sh)"
PROGRAM_HOMEPAGE="https://github.com/eth-p/bat-extras"
PROGRAM_COPYRIGHT="Copyright (C) 2019-2020 eth-p | MIT License"
PROGRAM_VERSION="$({
	TOP="$(dirname "$(dirname "${BASH_SOURCE[0]}")")"
	printf "%s" "$(cat "${TOP}/version.txt" 2>/dev/null || echo "unknown")"
	if [[ -e "${TOP}/.git" ]]; then
		printf "%s-git (%s)" "" "$(git -C "${TOP}" rev-parse --short HEAD)"
	fi
})"
