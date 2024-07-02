#!/bin/bash
# File              : unset_gh.sh
# Author            : Zhao Ya Dong <421564807@qq.com>
# Date              : 2024.07.02
# Last Modified Date: 2024.07.02
# CopyRight (c) 2021 CPIC DIR, all rights reserved.
#
#
git config --global --unset url."http://ghcf5.jsdelivr.fyi/https://github.com/".insteadOf "https://github.com/"
git config --global --list
