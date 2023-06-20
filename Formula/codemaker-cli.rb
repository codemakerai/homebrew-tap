class CodemakerCli < Formula
  desc "Installs CodeMaker CLI"
  homepage "https://github.com/codemakerai/codemaker-cli"
  url "https://github.com/codemakerai/codemaker-cli.git",
      tag:      "v0.0.12",
      revision: "975598ed7aff11f6411f15b3ab3bea432c40c86c"
  license "MIT"
  head "https://github.com/codemakerai/codemaker-cli.git", branch: "dev"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install_symlink "codemaker-cli" => "codemaker"
  end
end
