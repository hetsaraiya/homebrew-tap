# Template: the release workflow fills in 0.1.0 and the checksums and
# publishes it as Formula/tendril.rb in hetsaraiya/homebrew-tap.
class Tendril < Formula
  desc "Plan and run LLMs across the machines you already have"
  homepage "https://github.com/hetsaraiya/homebrew-tap"
  version "0.1.0"
  license "Apache-2.0"

  base = "https://github.com/hetsaraiya/homebrew-tap/releases/download/tendril-v#{version}"

  on_macos do
    on_arm do
      url "#{base}/tendril-v#{version}-macos-arm64.tar.gz"
      sha256 "4c472b735cb2819b1a445d3066b6992ad5b0302b4526bff2264ef792c2c6198d"
    end
    on_intel do
      url "#{base}/tendril-v#{version}-macos-x86_64.tar.gz"
      sha256 "349451467faac871c355095ee9b99b4323cecbd825f81ca1f38ee613ae7af475"
    end
  end

  on_linux do
    on_intel do
      url "#{base}/tendril-v#{version}-linux-x86_64.tar.gz"
      sha256 "267ce7c1521a69595abbb3c97eb6d38e0474a412f0c80aa48e6e258a49e03fce"
    end
  end

  def install
    bin.install "tendril"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tendril --version")
  end
end
