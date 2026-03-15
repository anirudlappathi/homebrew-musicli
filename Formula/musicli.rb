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
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anirudlappathi/musicli/releases/download/v#{version}/musicli-darwin-aarch64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    end
    on_intel do
      url "https://github.com/anirudlappathi/musicli/releases/download/v#{version}/musicli-darwin-x86_64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anirudlappathi/musicli/releases/download/v#{version}/musicli-linux-x86_64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    end
  end

  def install
    bin.install "musicli"
  end

  test do
    assert_match "musicli", shell_output("#{bin}/musicli --version 2>&1", 0)
  end
end
