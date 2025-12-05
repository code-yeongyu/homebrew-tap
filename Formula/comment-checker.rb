class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.0/comment-checker_v0.3.0_darwin_arm64.tar.gz"
      sha256 "08ae994ce4acbcc99409f93ec4429baae751eceadaaa56d3cc14ad162261b611"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.0/comment-checker_v0.3.0_darwin_amd64.tar.gz"
      sha256 "cdc243388f9e1082616dbae2341ac81d13b5e007b3b3a4ebd7360011b2a764f2"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
