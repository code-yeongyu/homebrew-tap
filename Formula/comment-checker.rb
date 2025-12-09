class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.4/comment-checker_v0.4.4_darwin_arm64.tar.gz"
      sha256 "eca02b773ec2f183b42f5bd24c3d3d4c2e7247781edbf2acd91aebe2d80ceab9"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.4/comment-checker_v0.4.4_darwin_amd64.tar.gz"
      sha256 "526bea65dd2154562bb789e1158a0e5cb0bbb783a027446c7923b78923dc3536"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
