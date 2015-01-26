require "formula"

class GitHooks < Formula
  homepage "https://github.com/icefox/git-hooks"
  head "https://github.com/icefox/git-hooks.git"

  def install
    bin.install "git-hooks"
  end
end
