local iron = require("iron.core")

iron.setup {
  config = {
    -- If iron should expose `<plug>(...)` mappings for the plugins
    should_map_plug = false,
    -- Whether a repl should be discarded or not
    scratch_repl = false,
    -- Your repl definitions come here
    repl_definition = {
      python = {
        --command = {"/Users/junaikin/opt/anaconda3/bin/ipython"}
        command = {"/Users/junaikin/opt/anaconda3/envs/py3Renv-m1/bin/ipython"}
      }
    },
    repl_open_cmd = 'belowright 15 split',
    -- how the REPL window will be opened, the default is opening
    -- a float window of height 40 at the bottom.
  },
  keymaps = {
    send_motion = "<>sc",
    visual_send = "<C-t>",
    send_line = "<LocalLeader>l",
    cr = "<C-<CR>>",
    interrupt = "<C-z>",
    exit = "<C-q>",
    clear = "<C-c>",
  },
  -- Iron doesn't set keymaps by default anymore. Set them here
  -- or use `should_map_plug = true` and map from you vim files
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = true
  }
}

require("jupytext").setup({
  style = "hydrogen",
  output_extension = "auto",  -- Default extension. Don't change unless you know what you are doing
  force_ft = nil,  -- Default filetype. Don't change unless you know what you are doing
  custom_language_formatting = {},
})

require'sniprun'.setup({
  selected_interpreters = {},     --# use those instead of the default for the current filetype
  repl_enable = {},               --# enable REPL-like behavior for the given interpreters
  repl_disable = {},              --# disable REPL-like behavior for the given interpreters

  interpreter_options = {         --# interpreter-specific options, see docs / :SnipInfo <name>

    --# use the interpreter name as key
    GFM_original = {
      use_on_filetypes = {"markdown.pandoc"}    --# the 'use_on_filetypes' configuration key is
                                                --# available for every interpreter
    },
    Python3_original = {
        error_truncate = "auto"         --# Truncate runtime errors 'long', 'short' or 'auto'
                                        --# the hint is available for every interpreter
                                        --# but may not be always respected
    }
  },      

  --# you can combo different display modes as desired and with the 'Ok' or 'Err' suffix
  --# to filter only sucessful runs (or errored-out runs respectively)
  display = {
    "Terminal",                    --# display results in the command-line  area
    -- "VirtualTextOk",              --# display ok results as virtual text (multiline is shortened)

    -- "VirtualText",             --# display results as virtual text
    -- "TempFloatingWindow",      --# display results in a floating window
    -- "LongTempFloatingWindow",  --# same as above, but only long results. To use with VirtualText[Ok/Err]
    -- "Terminal",                --# display results in a vertical split
    -- "TerminalWithCode",        --# display results and code history in a vertical split
    -- "NvimNotify",              --# display with the nvim-notify plugin
    -- "Api"                      --# return output to a programming interface
  },

  live_display = { "VirtualTextOk" }, --# display mode used in live_mode

  display_options = {
    terminal_width = 45,       --# change the terminal display option width
    notification_timeout = 5   --# timeout for nvim_notify output
  },

  --# You can use the same keys to customize whether a sniprun producing
  --# no output should display nothing or '(no output)'
  show_no_output = {
    "Classic",
    "TempFloatingWindow",      --# implies LongTempFloatingWindow, which has no effect on its own
  },

  --# customize highlight groups (setting this overrides colorscheme)
  snipruncolors = {
    SniprunVirtualTextOk   =  {bg="#66eeff",fg="#000000",ctermbg="Cyan",cterfg="Black"},
    SniprunFloatingWinOk   =  {fg="#66eeff",ctermfg="Cyan"},
    SniprunVirtualTextErr  =  {bg="#881515",fg="#000000",ctermbg="DarkRed",cterfg="Black"},
    SniprunFloatingWinErr  =  {fg="#881515",ctermfg="DarkRed"},
  },

  --# miscellaneous compatibility/adjustement settings
  inline_messages = 0,             --# inline_message (0/1) is a one-line way to display messages
				                   --# to workaround sniprun not being able to display anything

  borders = 'single',              --# display borders around floating windows
                                   --# possible values are 'none', 'single', 'double', or 'shadow'
  live_mode_toggle='off'           --# live mode toggle, see Usage - Running for more info   
})

vim.g.harpoon_log_level = 'debug'
