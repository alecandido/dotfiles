let s:cpo_save = &cpo
set cpo-=C

let s:autoload_path = expand('<sfile>:p:h')
let g:rst_version = '0.77'
let s:tempdir = fnamemodify(tempname(),':p')

fun! rst#error(msg) "{{{
    redraw
    echohl ErrorMsg
    echo '[RST]'
    echohl Normal
    echon a:msg
endfun "}}}
"{{{ Loading Functions
fun! rst#load_opt(...) "{{{
    let opts = get(a:000, 0, s:default.options)
    for [opt,var] in items(opts)
        if !exists('g:rst_'.opt)
            let g:rst_{opt} = var
        else
            let opt_type = type(g:rst_{opt})
            let alt_types = get(s:default.options_alternative_types, opt, [])
            if opt_type != type(var) && index(alt_types, opt_type) == -1
                " The option type is neither the type of the default value
                " nor is it in the alternative value list
                call rst#error("RIV: Wrong type for Option:'g:rst_".opt."'! Default used.")
                unlet! g:rst_{opt}
                let g:rst_{opt} = var
            endif
        endif
        unlet! var
    endfor
endfun "}}}
"{{{ Options:
let s:default = {'version': g:rst_version}
let s:default.options = {
            \'default'            : s:default,
            \'debug'              : 0,
            \'global_leader'      : '<C-E>',
            \'file_link_ext'      : 'vim,cpp,c,py,rb,lua,pl',
            \'file_ext_link_hl'   : 1,
            \'file_link_invalid_hl' : 'ErrorMsg',
            \'file_link_style'    : 1,
            \'highlight_code'     : "lua,python,cpp,javascript,vim,sh",
            \'code_indicator'     : 1,
            \'link_cursor_hl'     : 1,
            \'create_link_pos'    : '$',
            \'todo_levels'        : " ,o,X",
            \'todo_priorities'    : "ABC",
            \'todo_default_group' : 0,
            \'todo_datestamp'     : 1,
            \'todo_keywords'      : "TODO,DONE;FIXME,FIXED;START,PROCESS,STOP",
            \'disable_folding'    : 0,
            \'fold_blank'         : 2,
            \'fold_level'         : 3,
            \'fold_section_mark'  : ".",
            \'fold_auto_update'   : 1,
            \'content_format'     : '%i%l%n %t',
            \'auto_fold_force'    : 1,
            \'auto_fold1_lines'   : 5000,
            \'auto_fold2_lines'   : 3000,
            \'web_browser'        : "firefox",
            \'ft_browser'         : "",
            \'rst2html_args'      : "",
            \'rst2odt_args'       : "",
            \'rst2xml_args'       : "",
            \'rst2s5_args'        : "",
            \'rst2latex_args'     : "",
            \'section_levels'     : '=-~"''`',
            \'html_code_hl_style' : 'molokai',
            \'fuzzy_help'         : 0,
            \'auto_format_table'  : 1,
            \'fold_info_pos'      : 'right',
            \'temp_path'          : 1,
            \'disable_indent'     : 0,
            \'i_tab_pum_next'     : 1,
            \'i_tab_user_cmd'     : "",
            \'i_stab_user_cmd'    : "",
            \'ignored_imaps'      : "",
            \'ignored_nmaps'      : "",
            \'ignored_vmaps'      : "",
            \'ignored_maps'       : "",
            \'month_names'        : 'January,February,March,April,May,June,July,'
            \.'August,September,October,November,December',
            \'python_rst_hl'      : 0,
            \'default_path'         : '~/Documents/Riv',
            \'build_path'         : '_build',
            \'scratch_path'       : 'Scratch',
            \'source_suffix'      : '.rst',
            \'master_doc'         : 'index',
            \'auto_rst2html'      :  0,
            \'open_link_location' :  1,
            \'css_theme_dir'      :  '',
            \'unicode_ref_name'   :  0,
            \'use_calendar'       :  1,
            \'diary_rel_path'     : 'diary',
            \}
" Some options might accept different types of values.
" This is a dict relating all the possible types for each such option.
" Options that accept values of a single type are not listed.
let s:default.options_alternative_types = {
            \'temp_path'          : [type(0), type("")],
            \}
"}}}

let &cpo = s:cpo_save
unlet s:cpo_save
