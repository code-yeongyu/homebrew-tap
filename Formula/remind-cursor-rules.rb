class RemindCursorRules < Formula
  desc "Claude Code hook that injects Cursor rules for contextual coding assistance"
  homepage "https://github.com/code-yeongyu/remind-cursor-rules"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/remind-cursor-rules/releases/download/v0.1.0/remind-cursor-rules_v0.1.0_darwin_arm64.tar.gz"
      sha256 "1ddcd478c14a1b92dbb44fdf7b98906e7547ef031a4fdbda046fda05f7e25572"
    else
      url "https://github.com/code-yeongyu/remind-cursor-rules/releases/download/v0.1.0/remind-cursor-rules_v0.1.0_darwin_amd64.tar.gz"
      sha256 "59428f5990701b51faaa6d1954b2f98529aa5c4a2ceaaf867f7565b399419f21"
    end
  end

  def install
    bin.install "remind-cursor-rules"
  end

  test do
    system "#{bin}/remind-cursor-rules", "--version"
  end
end
