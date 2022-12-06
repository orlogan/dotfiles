-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/occam/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/occam/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/occam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/occam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/occam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/ravenxrz/DAPInstall.nvim"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\24set_default_keymaps\tleap\frequire\0" },
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n�\a\0\0\t\0:\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\0028\0005\3\3\0004\4\0\0=\4\4\0035\4\b\0005\5\6\0005\6\5\0=\6\a\5=\5\t\4=\4\n\0035\4\f\0005\5\v\0=\5\t\4=\4\r\0035\4\17\0005\5\14\0005\6\15\0=\6\16\5=\5\t\4=\4\18\0035\4\20\0005\5\19\0=\5\t\4=\4\21\0034\4\0\0=\4\22\0035\0046\0005\5\23\0005\6\25\0005\a\24\0=\a\26\0065\a\27\0005\b\28\0=\b\29\a5\b\30\0=\b\31\a5\b \0=\b!\a5\b\"\0=\b#\a5\b$\0=\b%\a=\a&\0065\a'\0005\b(\0=\b)\a5\b*\0=\b+\a5\b,\0=\b-\a5\b.\0=\b/\a5\b0\0=\b1\a5\b2\0=\b3\a=\a4\6=\0065\5=\5\t\4=\0047\3=\0039\2B\0\2\1K\0\1\0\tload\1\0\0\24core.norg.concealer\1\0\0\nicons\fheading\flevel_6\1\0\1\ticon\r     ⋄\flevel_5\1\0\1\ticon\f    ⟡\flevel_4\1\0\1\ticon\v   ❖\flevel_3\1\0\1\ticon\n  ◆\flevel_2\1\0\1\ticon\t ◇\flevel_1\1\0\1\ticon\b◈\1\0\1\fenabled\2\ttodo\14cancelled\1\0\1\ticon\b\fon_hold\1\0\1\ticon\b\vurgent\1\0\1\ticon\b\14uncertain\1\0\1\ticon\6?\fpending\1\0\1\ticon\b\1\0\1\venable\2\vmarker\1\0\0\1\0\2\ticon\t \fenabled\2\1\0\2\18markup_preset\fconceal\16icon_preset\fdiamond core.integrations.telescope\25core.norg.completion\1\0\0\1\0\1\vengine\rnvim-cmp\18core.gtd.base\1\0\0\fexclude\1\2\0\0\nnotes\1\0\1\14workspace\bgtd\18core.keybinds\1\0\0\1\0\2\21default_keybinds\2\17neorg_leader\6,\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\2\bgtd ~/Documents/notes/neorg/gtd\fjournal%~/Documents/notes/neorg/journal/\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neorg-telescope"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/neorg-telescope",
    url = "https://github.com/nvim-neorg/neorg-telescope"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimtex = {
    config = { "\27LJ\2\n�\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0K\0\1\0\1\3\0\0\20Underfull \\hbox\19Overfull \\hbox#vimtex_quickfix_ignore_filters\1\0\1\14build_dir\nbuild\28vimtex_compiler_latexmk\26vimtex_syntax_enabled\fzathura\23vimtex_view_method\6g\bvim\0" },
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/occam/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\24set_default_keymaps\tleap\frequire\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n�\a\0\0\t\0:\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\0028\0005\3\3\0004\4\0\0=\4\4\0035\4\b\0005\5\6\0005\6\5\0=\6\a\5=\5\t\4=\4\n\0035\4\f\0005\5\v\0=\5\t\4=\4\r\0035\4\17\0005\5\14\0005\6\15\0=\6\16\5=\5\t\4=\4\18\0035\4\20\0005\5\19\0=\5\t\4=\4\21\0034\4\0\0=\4\22\0035\0046\0005\5\23\0005\6\25\0005\a\24\0=\a\26\0065\a\27\0005\b\28\0=\b\29\a5\b\30\0=\b\31\a5\b \0=\b!\a5\b\"\0=\b#\a5\b$\0=\b%\a=\a&\0065\a'\0005\b(\0=\b)\a5\b*\0=\b+\a5\b,\0=\b-\a5\b.\0=\b/\a5\b0\0=\b1\a5\b2\0=\b3\a=\a4\6=\0065\5=\5\t\4=\0047\3=\0039\2B\0\2\1K\0\1\0\tload\1\0\0\24core.norg.concealer\1\0\0\nicons\fheading\flevel_6\1\0\1\ticon\r     ⋄\flevel_5\1\0\1\ticon\f    ⟡\flevel_4\1\0\1\ticon\v   ❖\flevel_3\1\0\1\ticon\n  ◆\flevel_2\1\0\1\ticon\t ◇\flevel_1\1\0\1\ticon\b◈\1\0\1\fenabled\2\ttodo\14cancelled\1\0\1\ticon\b\fon_hold\1\0\1\ticon\b\vurgent\1\0\1\ticon\b\14uncertain\1\0\1\ticon\6?\fpending\1\0\1\ticon\b\1\0\1\venable\2\vmarker\1\0\0\1\0\2\ticon\t \fenabled\2\1\0\2\18markup_preset\fconceal\16icon_preset\fdiamond core.integrations.telescope\25core.norg.completion\1\0\0\1\0\1\vengine\rnvim-cmp\18core.gtd.base\1\0\0\fexclude\1\2\0\0\nnotes\1\0\1\14workspace\bgtd\18core.keybinds\1\0\0\1\0\2\21default_keybinds\2\17neorg_leader\6,\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\2\bgtd ~/Documents/notes/neorg/gtd\fjournal%~/Documents/notes/neorg/journal/\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0K\0\1\0\1\3\0\0\20Underfull \\hbox\19Overfull \\hbox#vimtex_quickfix_ignore_filters\1\0\1\14build_dir\nbuild\28vimtex_compiler_latexmk\26vimtex_syntax_enabled\fzathura\23vimtex_view_method\6g\bvim\0", "config", "vimtex")
time([[Config for vimtex]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
