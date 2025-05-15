return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {
          cmd = {
            os.getenv("JAVA_HOME") .. "/bin/java", -- Dynamically use JAVA_HOME
            "-Declipse.application=org.eclipse.jdt.ls.core.id1",
            "-Dosgi.bundles.defaultStartLevel=4",
            "-Declipse.product=org.eclipse.jdt.ls.core.product",
            "-Dlog.protocol=true",
            "-Dlog.level=ALL",
            "-Xmx2G",
            "--add-modules=ALL-SYSTEM",
            "--add-opens",
            "java.base/java.util=ALL-UNNAMED",
            "--add-opens",
            "java.base/java.lang=ALL-UNNAMED",
            "-jar",
            "/path/to/jdt-language-server/plugins/org.eclipse.equinox.launcher_VERSION.jar",
            "-configuration",
            "/path/to/jdt-language-server/config_linux",
            "-data",
            vim.fn.stdpath("cache") .. "/jdtls/workspace",
          },
          root_dir = require("lspconfig.util").root_pattern(".git", "mvnw", "gradlew"),
        },
      },
    },
  },
}
