local autogroup = vim.api.nvim_create_augroup
local sussmanGroup = autogroup('DMS',{})
local autocmd=vim.api.nvim_create_autocmd
autocmd('VimResized',{
        group=sussmanGroup,
        callback = function()
            local currentTab=vim.fn.tabpagenr()
            vim.cmd("tabdo wincmd =")
            vim.cmd("tabnext " .. currentTab)
        end
})
