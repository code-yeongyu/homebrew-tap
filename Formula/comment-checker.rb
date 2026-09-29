class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code and OpenCode"
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.8.1/comment-checker_v0.8.1_darwin_arm64.tar.gz"
      sha256 "ac9da85985e058297be088bdbfd9e53a521a9bbc3d946167e929b12382c4ade3"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.8.1/comment-checker_v0.8.1_darwin_amd64.tar.gz"
      sha256 "bd6c44d52691f1e39a06ee6e159f4022208da7627d89951c54a3681de803ef88"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
