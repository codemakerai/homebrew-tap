class CodemakerCli < Formula
  desc "Installs CodeMaker CLI"
  homepage "https://github.com/codemakerai/codemaker-cli"
  url "https://github.com/codemakerai/codemaker-cli.git",
      tag:      "v1.0.0",
      revision: "4205f012bd5c1af70edbb0da4b5765b7900200f7"
  license "MIT"
  head "https://github.com/codemakerai/codemaker-cli.git", branch: "dev"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install_symlink "codemaker-cli" => "codemaker"
  end
end
