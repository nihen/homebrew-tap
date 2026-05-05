class Ah < Formula
  desc "Agent History - cross-agent session search CLI"
  homepage "https://github.com/nihen/ah"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.2.0/ah-darwin-arm64"
      sha256 "5cf544bd668994f310df42c995790446ecb1424b34ccc9e4e4aef3366b4b7523"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.2.0/ah-linux-x86_64"
      sha256 "9d2d7869d9e4511a89749f05738cb106d681a8f1168aca4564b3c57306ec1175"
    end
  end

  def install
    bin.install Dir["ah-*"].first => "ah"
  end

  test do
    assert_match "ah", shell_output("#{bin}/ah --version")
  end
end
