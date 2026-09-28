cask "wigly-woo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "f4478ce4cd93557e4d268dcab2cbc153177f6a34863d6d329f902124cad3e932",
         intel: "1c103993c9437deaa685c01ebd379014d396efc0c254b5765b558ca317c1b2e1"

  url "https://github.com/hetsaraiya/wigly-woo/releases/download/v#{version}/WiglyWoo-v#{version}-macos-#{arch}.zip"
  name "Wigly Woo"
  desc "Nearby file transfer and remote companion"
  homepage "https://github.com/hetsaraiya/wigly-woo"

  depends_on macos: ">= :ventura"

  app "WiglyWoo.app"

  caveats <<~EOS
    Wigly Woo is ad-hoc signed and is not notarized by Apple.
    On first launch, macOS may require approval in:
      System Settings > Privacy & Security > Open Anyway
  EOS
end
