class CodemakerCli < Formula
  desc "Installs CodeMaker CLI"
  homepage "https://github.com/codemakerai/codemaker-cli"
  url "https://github.com/codemakerai/codemaker-cli.git",
      tag:      "v1.5.0",
      revision: "c5b43ce4e92f53718f09b8b29174cd970adc9c17"
  license "MIT"
  head "https://github.com/codemakerai/codemaker-cli.git", branch: "dev"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install_symlink "codemaker-cli" => "codemaker"
  end
end
