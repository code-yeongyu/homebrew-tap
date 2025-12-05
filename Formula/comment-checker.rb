class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code. 100% vibe coded."
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.2/comment-checker_v0.3.2_darwin_arm64.tar.gz"
      sha256 "c50577a5d89dd33a16c671ce5799235772bf1bbcdee896cec35048ccbed5dbe0"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.3.2/comment-checker_v0.3.2_darwin_amd64.tar.gz"
      sha256 "dfda122143ee54fb26cf506bc259a7b434f85a530d04f3d911c5965c1c2ea311"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
