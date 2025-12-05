class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.1/comment-checker_v0.4.1_darwin_arm64.tar.gz"
      sha256 "c0ce41c02320370225698acbf127994cae71ca8fc0fb6ee8aaee70ead8405b74"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.1/comment-checker_v0.4.1_darwin_amd64.tar.gz"
      sha256 "2af0d7d40d128aad25d1545f881caa86654a5c1f3f8a3dab2ebee8dbea84177a"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
