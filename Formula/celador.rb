# frozen_string_literal: true

class Celador < Formula
  desc "Zero-trust dependency security CLI for JS/TS workspaces"
  homepage "https://github.com/GustavoGutierrez/celador"
  license "MIT"
  version "0.1.7"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/GustavoGutierrez/celador/releases/download/v#{version}/celador_#{version}_darwin_arm64.tar.gz"
    sha256 "442dcb9be7039b14d7a446b6ee82d550ae8f01a151e837ce7736a7c8714e8d77"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/GustavoGutierrez/celador/releases/download/v#{version}/celador_#{version}_linux_amd64.tar.gz"
    sha256 "78c93d366956208c727e5ce4c34af650731751d166f3460ac68e8f89700ce3d2"
  end

  def install
    bin.install "celador"
  end

  test do
    assert_match "Zero-trust dependency security", shell_output("#{bin}/celador --help")
  end
end
