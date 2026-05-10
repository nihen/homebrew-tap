class Zsass < Formula
  desc "Sass compiler implemented in Zig"
  homepage "https://github.com/nihen/zsass"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.0/zsass-v0.3.0-macos-aarch64.tar.gz"
      sha256 "2b4520104b2f7829d2042151869c22f7b09ea7cd6c35d1e22b7a81d249ddbb30"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.0/zsass-v0.3.0-macos-x86_64.tar.gz"
      sha256 "7231691e9d6fdda90f4d06261f07489d1c4027c2055a3dd09e7017a14459209d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.0/zsass-v0.3.0-linux-aarch64.tar.gz"
      sha256 "da1cdd5fecf55008463b4c3a04377add501a271552ca6293a45c4c4fd925cbbc"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.0/zsass-v0.3.0-linux-x86_64.tar.gz"
      sha256 "afa4464e4f4ca9980ec2f5b79af2662cdadfafca4d2730917353e33136e78bd4"
    end
  end

  def install
    bin.install "zsass"
  end

  test do
    assert_match "zsass #{version}", shell_output("#{bin}/zsass --version").strip
  end
end
