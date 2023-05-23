class CodemakerCli < Formula
  desc "Installs CodeMaker CLI"
  homepage "https://github.com/codemakerai/codemaker-cli"
  url "https://github.com/codemakerai/codemaker-cli.git",
      tag:      "v0.0.9",
      revision: "3fd1d2d3e8f8fe6ecd2fe4d2e9604e39cab16ea0"
  license "MIT"
  head "https://github.com/codemakerai/codemaker-cli.git", branch: "dev"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install_symlink "codemaker-cli" => "codemaker"
  end
end
