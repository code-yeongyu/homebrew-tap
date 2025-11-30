class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.1.0/comment-checker_v0.1.0_darwin_arm64.tar.gz"
      sha256 "6962758ba8c02330a9f9fc8b258a2abb93a9b0bf264bfdfe17492c8f117b35ec"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.1.0/comment-checker_v0.1.0_darwin_amd64.tar.gz"
      sha256 "0776c940d9f4cdf7f039b765b82193e3a9ae671aa5d209fb0414083d5b40ecb3"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
