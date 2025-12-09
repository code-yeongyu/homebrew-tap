class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.3/comment-checker_v0.4.3_darwin_arm64.tar.gz"
      sha256 "a021594e95bd8573e7885b07cfb9a8665af66e31fa19028c73d0db49a1d55724"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.4.3/comment-checker_v0.4.3_darwin_amd64.tar.gz"
      sha256 "9b571c3fa421dedc7b4c9e7982a10e1cc5f906a08958fb9a891b0e0e8f1d2466"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
