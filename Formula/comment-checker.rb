class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.2/comment-checker_v0.4.2_darwin_arm64.tar.gz"
      sha256 "53de4534f0857760378b480c08ab138bae82b5b0e016bc5a6005020d7ccc8d32"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.2/comment-checker_v0.4.2_darwin_amd64.tar.gz"
      sha256 "ddf1561963eff8cbfd72a641b06616b126f8ae9701a9d2e571f0c6a0ebab3e82"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
