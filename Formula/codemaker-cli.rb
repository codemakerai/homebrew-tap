class CodemakerCli < Formula
    desc "CodeMaker CLI."
    homepage "https://github.com/codemakerai/codemaker-cli"
    url "https://github.com/codemakerai/codemaker-cli/releases/download/v0.0.1/macos-amd64.zip"
    sha256 "44807a64d8f955ea68b07f4ce0e67b2c6e45de89d194373a5ebd244bb009580c"
    license "MIT"
  
    def install
      bin.install "bin/codemaker"
    end
  end
