class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.6.0/comment-checker_v0.6.0_darwin_arm64.tar.gz"
      sha256 "523bcff917544e74c054ba3f7bab117005704adaadbf7a27fa52e3f90e750dd0"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.6.0/comment-checker_v0.6.0_darwin_amd64.tar.gz"
      sha256 "35d0e680915fbb2aca09b45e35222fdc074215021cadd57f110cc537c705b37f"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
