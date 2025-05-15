return {
  "mfussenegger/nvim-dap",
  optional = true,
  opts = function()
    -- Simple configuration to attach to remote java debug process
    -- Taken directly from https://github.com/mfussenegger/nvim-dap/wiki/Java
    local dap = require("dap")
    dap.configurations.java = {
      {
        type = "java",
        request = "attach",
        name = "Debug (Attach) - Remote",
        hostName = "127.0.0.1",
        port = 5005,
      },
      {
        type = "java",
        request = "launch",
        name = "Launch Batch",
        mainClass = "com.brightkut.BatchApplication",
        args = "job", --  CLI Agrument
        vmArgs = "-Dspring.profiles.active=batch", -- Vm option
        projectName = "user-service",
      },
    }
  end,
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = { ensure_installed = { "java-debug-adapter", "java-test" } },
    },
  },
}
