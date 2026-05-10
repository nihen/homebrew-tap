class Zsass < Formula
  desc "Sass compiler implemented in Zig"
  homepage "https://github.com/nihen/zsass"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.2.0/zsass-v0.2.0-macos-aarch64.tar.gz"
      sha256 "f3d590dec6c31b3b5513c4c8f7d1ed7ba355a4795ca0032118c2036ddf5ba0e4"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.2.0/zsass-v0.2.0-macos-x86_64.tar.gz"
      sha256 "2c20d19f5255dd369ea366e69368abc757954e6c5789e4f26b587d6357a41388"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.2.0/zsass-v0.2.0-linux-aarch64.tar.gz"
      sha256 "0adb315ba719c10338e64c81c748aebc8f99d18bae40bbd4fe10ab4f7e8c90b9"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.2.0/zsass-v0.2.0-linux-x86_64.tar.gz"
      sha256 "864944df7344c1867863b5ad4527ae9192c6378363810729ceadaf7c9fd25ea5"
    end
  end

  def install
    bin.install "zsass"
  end

  test do
    assert_match "zsass #{version}", shell_output("#{bin}/zsass --version").strip
  end
end
