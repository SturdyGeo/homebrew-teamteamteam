class Ttteam < Formula
  desc "Terminal-first, multi-user kanban CLI"
  homepage "https://github.com/SturdyGeo/teamteamteam"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SturdyGeo/teamteamteam/releases/download/v#{version}/ttteam-darwin-arm64.tar.gz"
      sha256 "95ccf8bf591725d5a391b77eb7184e2d18d4a9b8d53337807f5fe0bc2693034d"
    else
      url "https://github.com/SturdyGeo/teamteamteam/releases/download/v#{version}/ttteam-darwin-amd64.tar.gz"
      sha256 "4481890f5b83abe0b804ccfc29309b97cbf3d6cf5d4535626e07ae97c429c995"
    end
  end

  def install
    bin.install "ttteam"
  end

  test do
    system "#{bin}/ttteam", "--version"
  end
end
