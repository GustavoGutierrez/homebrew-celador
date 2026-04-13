# frozen_string_literal: true

class Celador < Formula
  desc "Zero-trust dependency security CLI for JS/TS workspaces"
  homepage "https://github.com/GustavoGutierrez/celador"
  license "MIT"
  version "0.3.1"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/GustavoGutierrez/celador/releases/download/v#{version}/celador_#{version}_darwin_arm64.tar.gz"
    sha256 "82c5f992cff9ba56277c46410443f2e563fc43518b212d091b9d119fe52b8141"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/GustavoGutierrez/celador/releases/download/v#{version}/celador_#{version}_linux_amd64.tar.gz"
    sha256 "ad6c7f7c1bbf8eeb16bcbde21f70d544bb520efb0f686046c383abb5dfd0b707"
  end

  def install
    bin.install "celador"
  end

  test do
    assert_match "Zero-trust dependency security", shell_output("#{bin}/celador --help")
  end
end
