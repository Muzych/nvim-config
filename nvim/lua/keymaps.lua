-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

local M = {}

-- 将 cmp 相关配置独立出来
M.cmp = function(cmp)
    return {
        -- 出现补全
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        -- 取消
        ["<A-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        -- 上一个
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<C-j>"] = cmp.mapping.select_next_item(),
        -- 确认
        ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace,
        }),
    }
end

-- 普通键位映射设置
local function setup_general_keymaps()
    -- Resize with arrows
    vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
    vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
    vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
    vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

    -- Visual mode
    vim.keymap.set('v', '<', '<gv', opts)
    vim.keymap.set('v', '>', '>gv', opts)

    -- Nvim Tree
    vim.keymap.set('n', '<A-m>', ':NvimTreeToggle<CR>', opts)
    -- Bufferline
    vim.keymap.set('n', '<C-h>', ":BufferLineCyclePrev<CR>", opts)
    vim.keymap.set('n', '<C-l>', ":BufferLineCycleNext<CR>", opts)
    -- Telescope
    vim.keymap.set('n', '<C-p>', ":Telescope find_files<CR>", opts)
    vim.keymap.set('n', '<C-f>', ":Telescope live_grep<CR>", opts)
end

-- 初始化函数
M.setup = function()
    setup_general_keymaps()
end

return M
