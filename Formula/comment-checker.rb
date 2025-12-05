class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.5/comment-checker_v0.3.5_darwin_arm64.tar.gz"
      sha256 "0a522fde5edebba69223b90b45f7d288d6981714ec96e2671dd2e3556177fb58"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.5/comment-checker_v0.3.5_darwin_amd64.tar.gz"
      sha256 "7e3c87b8c8859f9486072ada0f1f36745a603272714a2296c94c90888cbedc86"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
