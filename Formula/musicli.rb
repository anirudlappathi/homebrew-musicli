# Homebrew formula for musicli
#
# To use this tap:
#   1. Create a repo: github.com/anirudlappathi/homebrew-musicli
#   2. Copy this file to Formula/musicli.rb in that repo
#   3. Update the url and sha256 after each release
#
# Users install with:
#   brew tap anirudlappathi/musicli
#   brew install musicli
#
class Musicli < Formula
  desc "Terminal music player for Spotify with visualizer and album art"
  homepage "https://github.com/anirudlappathi/musicli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anirudlappathi/musicli/releases/download/v#{version}/musicli-darwin-aarch64.tar.gz"
      sha256 "f8e92627f7155add4415ed787070a20c31e62267bb0623a1f753f34f7cfd0fbb"
    end
    on_intel do
      url "https://github.com/anirudlappathi/musicli/releases/download/v#{version}/musicli-darwin-x86_64.tar.gz"
      sha256 "9a9bf32c5d9b54e1059193729679c1678138baaac24cca617426a2661699c2e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anirudlappathi/musicli/releases/download/v#{version}/musicli-linux-x86_64.tar.gz"
      sha256 "4de3a36bd24cf258787bed6d9d470b1e9535b2a7b4dd917bff2ab4648dbe8fdc"
    end
  end

  def install
    bin.install "musicli"
  end

  test do
    assert_match "musicli", shell_output("#{bin}/musicli --version 2>&1", 0)
  end
end
