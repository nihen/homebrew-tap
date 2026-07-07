class Zsass < Formula
  desc "Sass compiler implemented in Zig"
  homepage "https://github.com/nihen/zsass"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.5/zsass-v0.3.5-macos-aarch64.tar.gz"
      sha256 "3b14728d34c06c2194b0f6f7a9b19c5ff458db513a15061f3910070516b7c22b"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.5/zsass-v0.3.5-macos-x86_64.tar.gz"
      sha256 "16f7c83ce95d6fe6e5fb6936c6fdc3b02e6a5321e7b806c40d1e5b7c40c7d614"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.5/zsass-v0.3.5-linux-aarch64.tar.gz"
      sha256 "74e4869f22b717187879fa8a75a7978d9e3d3ba4afcfdab0814746f224a34ce6"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.5/zsass-v0.3.5-linux-x86_64.tar.gz"
      sha256 "bb68cfa8a99c3a2b90cee79ca9c4fc78b30a86516676e91a4db7e29345b89a02"
    end
  end

  def install
    bin.install "zsass"
  end

  test do
    assert_match "zsass #{version}", shell_output("#{bin}/zsass --version").strip
  end
end
