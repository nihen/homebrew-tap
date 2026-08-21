class Ah < Formula
  desc "Agent History - cross-agent session search CLI"
  homepage "https://github.com/nihen/ah"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.3.0/ah-darwin-arm64"
      sha256 "211686f7489e90c39f58161cc03f74f36c8d0f3512c33115acaf1ec3876a40ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.3.0/ah-linux-x86_64"
      sha256 "5ff9e534fde6f19a80d43ebd6cd7ebcd53776b12c08af3e9cbb010fb1d3d04ef"
    end
  end

  def install
    bin.install Dir["ah-*"].first => "ah"
  end

  test do
    assert_match "ah", shell_output("#{bin}/ah --version")
  end
end
