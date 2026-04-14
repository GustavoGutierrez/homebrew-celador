# frozen_string_literal: true

class Celador < Formula
  desc "Zero-trust dependency security CLI for JS/TS workspaces"
  homepage "https://github.com/GustavoGutierrez/celador"
  license "MIT"
  version "0.6.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/GustavoGutierrez/celador/releases/download/v#{version}/celador_#{version}_darwin_arm64.tar.gz"
    sha256 "44635041be96ae9b7e12b2c3a8230f6a5144a4a0efa4823a674373565eac9e80"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/GustavoGutierrez/celador/releases/download/v#{version}/celador_#{version}_linux_amd64.tar.gz"
    sha256 "530a93ac1207fbb4ad30a941c0d9be7bd49f848716f7aaab6321d1abc33dc9df"
  end

  def install
    bin.install "celador"
  end

  test do
    assert_match "Zero-trust dependency security", shell_output("#{bin}/celador --help")
  end
end
