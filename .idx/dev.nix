# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
     pkgs.go
     pkgs.python311
     pkgs.python311Packages.pip
     pkgs.jupyter-all
    # pkgs.nodejs_20
    # pkgs.nodePackages.nodemon
  ];

  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # "vscodevim.vim"
				"donjayamanne.githistory"
				"codezombiech.gitignore"
				"GitHub.copilot"
				"GitHub.copilot-chat"
				"ms-azuretools.vscode-docker"
				"ms-azuretools.vscode-bicep"
				"ms-dotnettools.vscode-dotnet-runtime"
				"ms-kubernetes-tools.vscode-kubernetes-tools"
				"ms-python.python"
				"ms-python.vscode-pylance"
				"ms-toolsai.datawrangler"
				"ms-toolsai.jupyter"
				"ms-toolsai.jupyter-keymap"
				"ms-toolsai.vscode-jupyter-cell-tags"
				"ms-toolsai.vscode-jupyter-slideshow"
				"ziyasal.vscode-open-in-github"
				"charliermarsh.ruff"
 "arcanis.vscode-zipfs"
 "bierner.markdown-mermaid"
 "ms-python.debugpy"
 "ms-toolsai.jupyter-renderers"
 "redhat.vscode-yaml"
 "streetsidesoftware.code-spell-checker"
    ];

    # Enable previews
    previews = {
      enable = true;
      previews = {
        # web = {
        #   # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
        #   # and show it in IDX's web preview panel
        #   command = ["npm" "run" "dev"];
        #   manager = "web";
        #   env = {
        #     # Environment variables to set for your server
        #     PORT = "$PORT";
        #   };
        # };
      };
    };

    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: install JS dependencies from NPM
        # npm-install = "npm install";
      };
      # Runs when the workspace is (re)started
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}
