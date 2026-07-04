class Zsass < Formula
  desc "Sass compiler implemented in Zig"
  homepage "https://github.com/nihen/zsass"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.4/zsass-v0.3.4-macos-aarch64.tar.gz"
      sha256 "037c2f048619ae81fec56b0c62dc9a512e756b7a77ed1f5d521626caa330e6ea"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.4/zsass-v0.3.4-macos-x86_64.tar.gz"
      sha256 "7f5debdd2f5633618e901042e3178e81d33e18118a81d71c0c763bb7fab860e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nihen/zsass/releases/download/v0.3.4/zsass-v0.3.4-linux-aarch64.tar.gz"
      sha256 "0f89f577d749ae8bd6d94d0d20b9d207bf4482ed3eabe8c220840d18b80cfafe"
    end
    on_intel do
      url "https://github.com/nihen/zsass/releases/download/v0.3.4/zsass-v0.3.4-linux-x86_64.tar.gz"
      sha256 "ea176d0cdfc0410a8ec730167fd175a2c703f7e7133801001ae7838e7677ccef"
    end
  end

  def install
    bin.install "zsass"
  end

  test do
    assert_match "zsass #{version}", shell_output("#{bin}/zsass --version").strip
  end
end
