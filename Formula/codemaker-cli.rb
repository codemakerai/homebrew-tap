class CodemakerCli < Formula
    desc "CodeMaker CLI."
    homepage "https://github.com/codemakerai/codemaker-cli"
    url "https://github.com/codemakerai/codemaker-cli.git",
          tag:      "v0.0.1",
          revision: "adf6713a4e1e01e47a337f410e22cf3ffb74eb5f"
    head "https://github.com/codemakerai/codemaker-cli.git", branch: "dev"
    license "MIT"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-s -w")
      bin.install_symlink "codemaker-cli" => "codemaker"
    end
  end
