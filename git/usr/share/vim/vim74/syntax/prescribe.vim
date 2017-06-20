" Vim syntax file
" Language:	Kyocera PreScribe2e
" Maintainer:	Klaus Muth <klaus@hampft.de>
" URL:          http://www.hampft.de/vim/syntax/prescribe.vim
" Last Change:	2005 Mar 04

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match   prescribeSpecial	"!R!"

" all prescribe commands
syn keyword prescribeStatement	ALTF AMCR ARC ASFN ASTK BARC BLK BOX CALL 
syn keyword prescribeStatement	CASS CIR CLIP CLPR CLSP COPY CPTH CSET CSTK
syn keyword prescribeStatement	CTXT DAF DAM DAP DELF DELM DPAT DRP DRPA DUPX
syn keyword prescribeStatement	DXPG DXSD DZP ENDD ENDM ENDR EPL EPRM EXIT
syn keyword prescribeStatement	FDIR FILL FLAT FLST FONT FPAT FRPO FSET FTMD
syn keyword prescribeStatement	GPAT ICCD INTL JOG LDFC MAP MCRO MDAT MID
syn keyword prescribeStatement	MLST MRP MRPA MSTK MTYP MZP NEWP PAGE PARC PAT
syn keyword prescribeStatement	PCRP PCZP PDIR RDRP PDZP PELP PIE PMRA PMRP PMZP
syn keyword prescribeStatement	PRBX PRRC PSRC PXPL RDMP RES RSL RGST RPCS RPF
syn keyword prescribeStatement	RPG RPP RPU RTTX RTXT RVCD RVRD SBM SCAP SCCS
syn keyword prescribeStatement	SCF SCG SCP SCPI SCRC SCS SCU SDP SEM SETF SFA
syn keyword prescribeStatement	SFNT SIMG SIR SLJN SLM SLPI SLPP SLS  SMLT SPD
syn keyword prescribeStatement	SPL SPLT SPO SPSZ SPW SRM SRO SROP SSTK STAT STRK
syn keyword prescribeStatement	SULP SVCP TATR TEXT TPRS UNIT UOM WIDE WRED XPAT
syn match   prescribeStatement	"\<ALTB\s\+[ACDEGRST]\>"
syn match   prescribeStatement	"\<CPPY\s\+[DE]\>"
syn match   prescribeStatement	"\<EMCR\s\+[DE]\>"
syn match   prescribeStatement	"\<FRPO\s\+INIT\>"
syn match   prescribeStatement	"\<JOB[DLOPST]\>"
syn match   prescribeStatement	"\<LDFC\s\+[CFS]\>"
syn match   prescribeStatement	"\<RWER\s\+[DFILRSTW]\>"

syn match   prescribeCSETArg	"[0-9]\{1,3}[A-Z]"
syn match   prescribeFRPOArg	"[A-Z][0-9]\{1,2}"
syn match   prescribeNumber	"[0-9]\+"
syn region  prescribeString	start=+'+ end=+'+ skip=+\\'+
syn region  prescribeComment	start=+CMNT+ end=+;+

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_prescribe_syn_inits")
  if version < 508
    let did_prescribe_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink prescribeSpecial		PreProc
  HiLink prescribeStatement		Statement
  HiLink prescribeNumber		Number
  HiLink prescribeCSETArg		String
  HiLink prescribeFRPOArg		String
  HiLink prescribeComment		Comment

  delcommand HiLink
endif

let b:current_syntax = "prescribe"

" vim: ts=8
