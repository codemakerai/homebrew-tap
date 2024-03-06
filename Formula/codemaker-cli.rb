class CodemakerCli < Formula
  desc "Installs CodeMaker CLI"
  homepage "https://github.com/codemakerai/codemaker-cli"
  url "https://github.com/codemakerai/codemaker-cli.git",
      tag:      "v0.0.16",
      revision: "81f66a9619f44fd03177b26bc92c1603710200c3"
  license "MIT"
  head "https://github.com/codemakerai/codemaker-cli.git", branch: "dev"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install_symlink "codemaker-cli" => "codemaker"
  end
end
