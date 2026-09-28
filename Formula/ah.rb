class Ah < Formula
  desc "Agent History - cross-agent session search CLI"
  homepage "https://github.com/nihen/ah"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.6.0/ah-darwin-arm64"
      sha256 "29dc082249100144c6510ea69868a79366eb83ebb7eccbe53555deba29e68e57"
    end
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.6.0/ah-darwin-x86_64"
      sha256 "98dfdb242663b0e46f9347f588870102b9c46644c6bb100a88eebe50876697f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.6.0/ah-linux-arm64"
      sha256 "e0b0750c42330e9a0250b35a6cd845fc98095813a3fa651f9fc7e55c2e4607dd"
    end
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.6.0/ah-linux-x86_64"
      sha256 "a24a5caa7f415717662bbc830dd1424c069daa28a93ef589171e07815838119d"
    end
  end

  def install
    bin.install Dir["ah-*"].first => "ah"
  end

  test do
    assert_match "ah", shell_output("#{bin}/ah --version")
  end
end
