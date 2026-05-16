class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.1/comment-checker_v0.7.1_darwin_arm64.tar.gz"
      sha256 "9be8b858b5c04c3704e48c719733180c7031dbf0a817c637318396242fc61f32"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.1/comment-checker_v0.7.1_darwin_amd64.tar.gz"
      sha256 "06a600ab785d90d9f5a4e18da55a2143d3dbf773f67e1e0b19e82b6bb521b513"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
