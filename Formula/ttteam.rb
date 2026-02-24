class Ttteam < Formula
  desc "Terminal-first, multi-user kanban CLI"
  homepage "https://github.com/SturdyGeo/teamteamteam"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SturdyGeo/teamteamteam/releases/download/v#{version}/ttteam-darwin-arm64.tar.gz"
      sha256 "c4bf86b21dbf97d99e20fe5e4e22f71a1b28c4855f77bb2ddaa3fe7c798dd422"
    else
      url "https://github.com/SturdyGeo/teamteamteam/releases/download/v#{version}/ttteam-darwin-amd64.tar.gz"
      sha256 "c88aa40fa447f7194118e4f6de63f07c4d47caeb29e339b347382e41f4a49e30"
    end
  end

  def install
    bin.install "ttteam"
  end

  test do
    system "#{bin}/ttteam", "--version"
  end
end
