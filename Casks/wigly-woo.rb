cask "wigly-woo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "cd03fbeca8f7109b3f9d46f6b87fca2c363b2922823e3711b3b40a8cbfc02bb4",
         intel: "5c7cec6392ff49d1e308577aed71ef3030ab1c3da4302fbbedf20f7dd2a32958"

  url "https://github.com/hetsaraiya/wigly-woo/releases/download/v#{version}/WiglyWoo-v#{version}-macos-#{arch}.zip"
  name "Wigly Woo"
  desc "Nearby file transfer and remote companion"
  homepage "https://github.com/hetsaraiya/wigly-woo"

  depends_on macos: :ventura

  app "WiglyWoo.app"

  caveats <<~EOS
    Wigly Woo is ad-hoc signed and is not notarized by Apple.
    On first launch, macOS may require approval in:
      System Settings > Privacy & Security > Open Anyway
  EOS
end
