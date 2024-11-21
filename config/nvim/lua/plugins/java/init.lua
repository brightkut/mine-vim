return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            settings = {
              java = {
                configuration = {
                  runtimes = {
                    {
                      name = "JavaSE-22",
                      path = "~/Library/Java/JavaVirtualMachines/openjdk-22.0.1/Contents/Home",
                    },
                    {
                      name = "JavaSE-21",
                      path = "~/Library/Java/JavaVirtualMachines/corretto-21.0.3/Contents/Home",
                    },
                    {
                      name = "JavaSE-17",
                      path = "~/Library/Java/JavaVirtualMachines/corretto-17.0.6/Contents/Home",
                    },
                    {
                      name = "JavaSE-11",
                      path = "~/Library/Java/JavaVirtualMachines/corretto-11.0.18/Contents/Home",
                    },
                    {
                      name = "JavaSE-8",
                      path = "~/Library/Java/JavaVirtualMachines/corretto-1.8.0_392/Contents/Home",
                    },
                  },
                },
              },
            },
          },
        },
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
            require("java").setup({
              root_markers = {
                "settings.gradle",
                "settings.gradle.kts",
                "pom.xml",
                "build.gradle",
                "mvnw",
                "gradlew",
                "build.gradle",
                "build.gradle.kts",
              },
            })
          end,
        },
      },
    },
  },
}