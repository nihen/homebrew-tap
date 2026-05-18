class Zsass < Formula
  desc "Sass compiler implemented in Zig"
  homepage "https://github.com/nihen/zsass"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.1/zsass-v0.3.1-macos-aarch64.tar.gz"
      sha256 "08d7e73af2a81702a164d58190d14708fd8710cebb2bdbdb98a29ddeabac18b9"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.1/zsass-v0.3.1-macos-x86_64.tar.gz"
      sha256 "b4a28c773f8bc5b1b78f78df70e15b31ab5ff24b6fbf8a9ec4850f486ef1af8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.1/zsass-v0.3.1-linux-aarch64.tar.gz"
      sha256 "b049f408acd8ecf6e367fffbdc4ac3388f629e7e17dc9afac249ba1df1c4ef2c"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.1/zsass-v0.3.1-linux-x86_64.tar.gz"
      sha256 "ca13d0dd5f519c357d1cd2cde332934c5b4950f22c641ecd8b706276fd5f0d4a"
    end
  end

  def install
    bin.install "zsass"
  end

  test do
    assert_match "zsass #{version}", shell_output("#{bin}/zsass --version").strip
  end
end
