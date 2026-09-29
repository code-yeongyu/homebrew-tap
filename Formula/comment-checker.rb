class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code and OpenCode"
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.8.2/comment-checker_v0.8.2_darwin_arm64.tar.gz"
      sha256 "57e0eea96b74a02bd6ed40f7078fda71c8807419ed039d33bc6a4b6db8d4d13c"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.8.2/comment-checker_v0.8.2_darwin_amd64.tar.gz"
      sha256 "b3a32a90be5cd2712caffb045b89fbc09d65c264297b607957f83302f1c7c1f5"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
