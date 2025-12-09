class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.4/comment-checker_v0.4.4_darwin_arm64.tar.gz"
      sha256 "b36fef302a3a584d61740286429e0f8f005f498adffa078410bc1e492c6ce80c"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.4/comment-checker_v0.4.4_darwin_amd64.tar.gz"
      sha256 "b1cadc4a70d10d1be7f901e305c2d08d0c911f06f589ea282e365c187a0c9f41"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
