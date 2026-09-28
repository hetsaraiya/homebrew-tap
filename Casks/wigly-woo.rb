cask "wigly-woo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "f16e0ba645641ba63c3eddadbb98e6a29335ad84366d19258a34ec8c9938992f",
         intel: "a2ed71cb2447e290173de8e5ef438080d8849478f8066ccb123cd7e821ddfb49"

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
