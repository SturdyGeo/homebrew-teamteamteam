class Ttteam < Formula
  desc "Terminal-first, multi-user kanban CLI"
  homepage "https://github.com/SturdyGeo/teamteamteam"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SturdyGeo/teamteamteam/releases/download/v#{version}/ttteam-darwin-arm64.tar.gz"
      sha256 "4062d21d100333a0afd409baced7e96fa430fe4678ed1b94ca9e5d3322473450"
    else
      url "https://github.com/SturdyGeo/teamteamteam/releases/download/v#{version}/ttteam-darwin-amd64.tar.gz"
      sha256 "84a2d56820d20bc711bbc9d2281be88208715be69213af50d85c9067387fb26d"
    end
  end

  def install
    bin.install "ttteam"
  end

  test do
    system "#{bin}/ttteam", "--version"
  end
end
