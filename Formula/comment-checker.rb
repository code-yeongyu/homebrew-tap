class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.1/comment-checker_v0.7.1_darwin_arm64.tar.gz"
      sha256 "5a6bb54fc2dfa9dff058455c85c386bb2ce98f6f53e8408156453930781c2332"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.1/comment-checker_v0.7.1_darwin_amd64.tar.gz"
      sha256 "ea68b1f8abf86fdb91879dfc6e89c9098930a93635f1487aa61f414dcbbde3f2"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
