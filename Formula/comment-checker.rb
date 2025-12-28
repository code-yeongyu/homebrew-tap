class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.0/comment-checker_v0.7.0_darwin_arm64.tar.gz"
      sha256 "d30a1e4cdc7b317ada2acb21241eda4e4a677e2f46427f5d244cbefd551f0d7f"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.0/comment-checker_v0.7.0_darwin_amd64.tar.gz"
      sha256 "e64dc7bcab5cdeab7ec9d443ad94740fa96eb6b9c1e3208548250a2d4702b91d"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
