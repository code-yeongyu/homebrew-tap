class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.5.0/comment-checker_v0.5.0_darwin_arm64.tar.gz"
      sha256 "b22bfa3cf5cf6274417e9cc9078840b52dffe9a2eafb08916d98a98809ecfd74"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.5.0/comment-checker_v0.5.0_darwin_amd64.tar.gz"
      sha256 "3ca3cbc497b0e5156336922b01a700880b8b10d52c0ccf04efbc0c3ada81feaa"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
