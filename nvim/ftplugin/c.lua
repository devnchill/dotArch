if vim.bo.filetype == "c" then
  vim.opt_local.makeprg = "gcc % -o %:r"
end
