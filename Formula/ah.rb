class Ah < Formula
  desc "Agent History - cross-agent session search CLI"
  homepage "https://github.com/nihen/ah"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.5.0/ah-darwin-arm64"
      sha256 "793c37b118a3ad532e48b89b738497ee29dde7e783c2abc7da6463a6165631c7"
    end
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.5.0/ah-darwin-x86_64"
      sha256 "5216f4d9e5c6c624c2b23b43fc4f54b6badb8ea5b9bb5384cab6b160dcea9474"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.5.0/ah-linux-arm64"
      sha256 "c08ffa8868297367fa2ddade6f3dc4d6d51223df6fb74830586cf08eab634d7f"
    end
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.5.0/ah-linux-x86_64"
      sha256 "470eeba82a03b3c171b294d29121ded94ef51cf52c297ba8db33ac20fc474ff0"
    end
  end

  def install
    bin.install Dir["ah-*"].first => "ah"
  end

  test do
    assert_match "ah", shell_output("#{bin}/ah --version")
  end
end
