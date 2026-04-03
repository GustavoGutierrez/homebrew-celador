# frozen_string_literal: true

class Celador < Formula
  desc "Zero-trust dependency security CLI for JS/TS workspaces"
  homepage "https://github.com/GustavoGutierrez/celador"
  license "MIT"
  version "0.1.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/GustavoGutierrez/celador/releases/download/v#{version}/celador_#{version}_darwin_arm64.tar.gz"
    sha256 "f439fa8b1c8439665f4f2c16497c2f808600c8ff38479b24c680c04ad640933c"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/GustavoGutierrez/celador/releases/download/v#{version}/celador_#{version}_linux_amd64.tar.gz"
    sha256 "2b60a4456e8fc744b79a72da91a4059eb1323f941c99cd2631e98ea9838e5531"
  end

  def install
    bin.install "celador"
  end

  test do
    assert_match "Zero-trust dependency security", shell_output("#{bin}/celador --help")
  end
end
