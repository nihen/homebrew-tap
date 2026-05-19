class Zsass < Formula
  desc "Sass compiler implemented in Zig"
  homepage "https://github.com/nihen/zsass"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.2/zsass-v0.3.2-macos-aarch64.tar.gz"
      sha256 "73269c068e99754a9a6ac4a965a9d6b8ed1cd5a7819ea05397a4ca9251988e23"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.2/zsass-v0.3.2-macos-x86_64.tar.gz"
      sha256 "ea3aa75c1ad50926f66fc1ad04a89775296afd372dc629de6de585232a59256d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.2/zsass-v0.3.2-linux-aarch64.tar.gz"
      sha256 "991004047e97219d762b146382964e79b9e9c63934f22e47a5e8812dd12f4b82"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.2/zsass-v0.3.2-linux-x86_64.tar.gz"
      sha256 "20efd4f48ec172ef245965e64ac86f079f986ff0b0d1654b51de63289ebb4736"
    end
  end

  def install
    bin.install "zsass"
  end

  test do
    assert_match "zsass #{version}", shell_output("#{bin}/zsass --version").strip
  end
end
