class Zsass < Formula
  desc "Sass compiler implemented in Zig"
  homepage "https://github.com/nihen/zsass"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.3/zsass-v0.3.3-macos-aarch64.tar.gz"
      sha256 "9770483c675bc49075f35a2d60be6f82a6b73340fb013253acc55feb201a65c3"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.3/zsass-v0.3.3-macos-x86_64.tar.gz"
      sha256 "8adba8ba4d0c81c70adb521ac110955ec076c4bfe63ad3cd44254b9cdd78363a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.3/zsass-v0.3.3-linux-aarch64.tar.gz"
      sha256 "58b6f253a667d425fc8d3a0290f67365e31138fd9accd77b467340985e92d211"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.3/zsass-v0.3.3-linux-x86_64.tar.gz"
      sha256 "5bc74db69ad348a1460ce0d010f89daacaed08efc59e3b9d716c3442fd254850"
    end
  end

  def install
    bin.install "zsass"
  end

  test do
    assert_match "zsass #{version}", shell_output("#{bin}/zsass --version").strip
  end
end
