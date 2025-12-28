class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.6.1/comment-checker_v0.6.1_darwin_arm64.tar.gz"
      sha256 "f3a586a6ec65ab3bb9ae92c20fc38c200c21ff0d030904688e27ea76cf09bdc0"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.6.1/comment-checker_v0.6.1_darwin_amd64.tar.gz"
      sha256 "99626a7387ab4771673f6d79485e80211dcd9b3b719cf2f18e276d2e8b2cdf50"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
