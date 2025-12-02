class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.2.0/comment-checker_v0.2.0_darwin_arm64.tar.gz"
      sha256 "5234668143a203b88c5d7efb986da9a2e57bcfd6cb8e0294f3206d64c5380640"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.2.0/comment-checker_v0.2.0_darwin_amd64.tar.gz"
      sha256 "d20b4f3bea4cb512f95957b8ba84325578c40d7007959e554faf3c8df9cb0fc2"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
