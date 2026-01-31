cask "mdns-browser" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.1"
  sha256 "e866817fa6de73019fd28b3c3da9052e469354b3cb3a5a61feccae7e89ea181b"

  url "https://github.com/hrzlgnm/mdns-browser/releases/download/mdns-browser-v#{version}/mdns-browser_#{version}_universal.dmg"
  name "mDNS-Browser"
  desc "Cross platform app written in Rust using tauri and leptos"
  homepage "https://github.com/hrzlgnm/mdns-browser"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "mdns-browser.app"

  zap trash: [
    "~/Library/Caches/com.github.hrzlgnm.mdns-browser",
    "~/Library/WebKit/com.github.hrzlgnm.mdns-browser",
  ]
end
