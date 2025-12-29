-- 基本設定
vim.opt.ignorecase = true    -- 検索時に大文字小文字を区別しない
vim.opt.smartcase = true     -- 大文字を含めて検索したら区別する
vim.opt.clipboard = "unnamedplus" -- システムのクリップボードと同期

-- スペースキーをリーダーキー（独自のショートカットの起点）にする
vim.g.mapleader = " "

-- VS Code専用の設定（VS Codeの中で動いている時だけ有効にする）
if vim.g.vscode then
    -- 例: スペース + w で保存
    vim.keymap.set('n', '<Leader>w', '<Cmd>call VSCodeNotify("workbench.action.files.save")<CR>')
    -- 例: スペース + e でエクスプローラー（サイドバー）を開く
    vim.keymap.set('n', '<Leader>e', '<Cmd>call VSCodeNotify("workbench.view.explorer")<CR>')
end