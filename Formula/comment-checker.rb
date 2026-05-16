class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.1/comment-checker_v0.7.1_darwin_arm64.tar.gz"
      sha256 "ec2a31d8141c4cb860e327cf52a3eb93e498bfa6fa9a310fe9392007d004ae69"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.1/comment-checker_v0.7.1_darwin_amd64.tar.gz"
      sha256 "85772f8b929b75513d0c8917b162baedfffe0b5c1aacf9f368e66a76ed87b32c"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
