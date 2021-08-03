local M = {}

-- @param input string normal mode operations to send, e.g.: vjjwwiHello, World
-- This will auto send escapes which are needed for a lot of selection
-- algos.  To get '< and '> updated to the current selection, escape must be
-- used.
function M.send_normal_mode_keys(input)
    vim.cmd(string.format(":exe \"norm! %s\\<Esc>", input))
end

return M

