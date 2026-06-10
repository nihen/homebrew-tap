class Ah < Formula
  desc "Agent History - cross-agent session search CLI"
  homepage "https://github.com/nihen/ah"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.2.1/ah-darwin-arm64"
      sha256 "23a285d48b944e6cc816f43b1bf295d0b2d86cbd0571a50584ff810ea7b7a71c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.2.1/ah-linux-x86_64"
      sha256 "2f47712ae832542c3a33f2b7a84cfbf44728ae68f98f7f47058dd48fc6688989"
    end
  end

  def install
    bin.install Dir["ah-*"].first => "ah"
  end

  test do
    assert_match "ah", shell_output("#{bin}/ah --version")
  end
end
