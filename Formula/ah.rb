class Ah < Formula
  desc "Agent History - cross-agent session search CLI"
  homepage "https://github.com/nihen/ah"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.4.0/ah-darwin-arm64"
      sha256 "797725264bed6470ea0d7c4490e6b7518691fb31c82148c556477f2611a6f2ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.4.0/ah-linux-x86_64"
      sha256 "89affc4b44884472838caba06efce5b7fc5c45fd242c8bf202ae26bd98686593"
    end
  end

  def install
    bin.install Dir["ah-*"].first => "ah"
  end

  test do
    assert_match "ah", shell_output("#{bin}/ah --version")
  end
end
