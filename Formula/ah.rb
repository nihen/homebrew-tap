class Ah < Formula
  desc "Agent History - cross-agent session search CLI"
  homepage "https://github.com/nihen/ah"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/ah/releases/download/v0.1.1/ah-darwin-arm64"
      sha256 "690bdcbb1d1e8ec392e42130a24d76a42bf65db2ad71a2370140079b7a3a42a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nihen/ah/releases/download/v0.1.1/ah-linux-x86_64"
      sha256 "961cdd824b1323f803a2bac6e5bc2ec0e5486351979305db8cb8b352b5c9021b"
    end
  end

  def install
    bin.install Dir["ah-*"].first => "ah"
  end

  test do
    assert_match "ah", shell_output("#{bin}/ah --version")
  end
end
