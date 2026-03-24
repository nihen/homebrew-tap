class Ah < Formula
  desc "Agent History - cross-agent session search CLI"
  homepage "https://github.com/nihen/ah"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.1.0/ah-darwin-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.1.0/ah-linux-x86_64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install Dir["ah-*"].first => "ah"
  end

  test do
    assert_match "ah", shell_output("#{bin}/ah --version")
  end
end
