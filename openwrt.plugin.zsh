#!/usr/bin/env zsh
# Standarized $0 handling, following:
# https://github.com/zdharma/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
# 0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
# 0="${${(M)0:#/*}:-$PWD/$0}"

# if [[ $PMSPEC != *f* ]] {
#   fpath+=( "${0:h}/functions" )
# }

# if [[ $PMSPEC != *b* ]] {
#   fpath+=( "${0:h}/bin" )
# }


if (( $+functions[zpm] )); then #DO_NOT_INCLUDE_LINE_IN_ZPM_CACHE
  zpm load zpm-zsh/locale  #DO_NOT_INCLUDE_LINE_IN_ZPM_CACHE
fi #DO_NOT_INCLUDE_LINE_IN_ZPM_CACHE


if [[ "$_zpm_cache" == "true" ]]; then
  rm -rf "$_ZPM_DIR/plugins/"*
fi
