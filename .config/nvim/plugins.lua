local iron = require("iron.core")

iron.setup {
  config = {
    -- If iron should expose `<plug>(...)` mappings for the plugins
    should_map_plug = false,
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      python = {
        command = {"/home/osg-leandro/miniconda3/envs/rl-june23/bin/ipython"}
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
