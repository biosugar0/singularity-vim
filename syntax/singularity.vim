" singularity.vim - Syntax highlighting for Singularity.
" Maintainer:   Yuto Kimura <https://github.com/biosugar0>
" Version:      0.1
" Last Change:  2018 Feb
" License:      MIT


if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "singularity"

syn match singularityKeyword /\v^\s*(Bootstrap:|From:|OSVersion:|MirrorURL:|Include:)\s/
syn match singularityKeyword /\v^\s*(\%help|\%setup|\%files|\%labels|\%environment)$/
syn match singularityKeyword /\v^\s*(\%runscript|\%test|\%post)$/
syn match singularityKeyword /\v^\s*(\%apprun|\%applabels|\%appinstall)$/
syn match singularityKeyword /\v^\s*(\%appenv|\%apphelp|\%appfiles)$/

syn region Emails start=/</ end=/>/ contains=@ oneline
syn match Urls /\(http\|https\|ssh\|hg\|git\)\:\/\/[a-zA-Z0-9\/\-\.]\+/
syntax region singularityString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax match singularityComment "\v^\s*#.*$"

hi def link singularityString String
hi def link singularityKeyword Keyword
hi def link singularityComment Comment
hi def link Emails Identifier
hi def link Urls Identifier
