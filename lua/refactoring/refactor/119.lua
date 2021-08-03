local Pipeline = require("refactoring.pipeline")
local selection_setup = require("refactoring.pipeline.selection_setup")
local refactor_setup = require("refactoring.pipeline.refactor_setup")
local post_refactor = require("refactoring.pipeline.post_refactor")

local M = {}

function M.extract_var(bufnr)
    Pipeline:from_task(refactor_setup)
        :add_task(selection_setup)
        :add_task(function(refactor)
            return true, refactor
        end)
        :after(post_refactor)
        :run()
end

return M
