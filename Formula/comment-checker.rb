class CommentChecker < Formula
  desc "Multi-language comment detection hook for Claude Code and OpenCode"
  homepage "https://github.com/code-yeongyu/go-claude-code-comment-checker"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.8.0/comment-checker_v0.8.0_darwin_arm64.tar.gz"
      sha256 "ac73b76f1ecf9615e859a0a7a00e76f25305563f87a7ee168cdd2e76c8e3855a"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.8.0/comment-checker_v0.8.0_darwin_amd64.tar.gz"
      sha256 "7408f026ece59fcc90fb7e598364e3c947e1cab277e59c639bf59096822ee4dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.0/comment-checker_v0.7.0_linux_arm64.tar.gz"
      sha256 "477317e4beadfe9965091115adde78a8114c644b2269099e1bfd0456ee95c231"
    else
      url "https://github.com/code-yeongyu/go-claude-code-comment-checker/releases/download/v0.7.0/comment-checker_v0.7.0_linux_amd64.tar.gz"
      sha256 "60b98741cd1b06acb247d2d746dda4ff15992e91e39dad2dc0db016ebd655646"
    end
  end

  def install
    bin.install "comment-checker"
  end

  test do
    system "#{bin}/comment-checker", "--help"
  end
end
