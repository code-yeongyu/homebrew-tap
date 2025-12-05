class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.4/comment-checker_v0.3.4_darwin_arm64.tar.gz"
      sha256 "6103b001902aaaa3911dd8666138c0ab7bf8468f4e54bdae90f1df1940bef462"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.4/comment-checker_v0.3.4_darwin_amd64.tar.gz"
      sha256 "a73e3ad26bb8b33bc41503dc44a93626e54f06a3f96a6e37e9e39d514c0fb3f5"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
