class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.1/comment-checker_v0.3.1_darwin_arm64.tar.gz"
      sha256 "997a928e7de8157900d2b8a92959fe1e135bda5d799570ff0659964433a11a7d"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.1/comment-checker_v0.3.1_darwin_amd64.tar.gz"
      sha256 "3e213bfa86c005075f1835bb36f8483f81271aab0feb3a060f53ad6ee3cedad2"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
