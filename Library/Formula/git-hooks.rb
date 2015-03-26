class GitHooks < Formula
  homepage "https://github.com/icefox/git-hooks"
  url "https://github.com/icefox/git-hooks/archive/1.00.0.tar.gz"
  sha1 "60b6048b8442237914f6174113facb922a9a3cdd"

  def install
    bin.install "git-hooks"
    (etc/"git-hooks").install "contrib"
  end

  test do
    output = `cd $(brew --prefix); git hooks`.strip
    assert_match /Listing User, Project, and Global hooks/, output
  end
end
