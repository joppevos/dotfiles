-- remap for git push set upstream 
-- :Git -c push.default=current push
-- use current branch as upstream
-- git push --set-upstream origin <current_branch>
vim.api.nvim_set_keymap('n', '<leader>gp', ':!git push -u origin $(git branch --show-current)<CR>', {noremap = true, silent = true})

