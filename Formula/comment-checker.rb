class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.3/comment-checker_v0.3.3_darwin_arm64.tar.gz"
      sha256 "9eaeab46b32454be147ab128ab9bf28d18ab726d63df7a4e8b2c3f03fac29d72"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.3/comment-checker_v0.3.3_darwin_amd64.tar.gz"
      sha256 "db2e841b4a8aa6ddae8da4fbbf6b579ed0032d2afe82777e9ace1121e6892eb7"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
