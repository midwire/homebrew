class GitHooks < Formula
  homepage "https://github.com/icefox/git-hooks"
  url "https://github.com/icefox/git-hooks/archive/1.00.0.tar.gz"
  version "1.00.0"
  sha1 "60b6048b8442237914f6174113facb922a9a3cdd"

  def install
    bin.install "git-hooks"
  end

  def caveats
    <<-EOS.undent
      Run 'git hooks --install' Inside a git project to change that projects
      git hooks to use git-hooks hooks. 'git hooks --uninstall' can be run at
      any time to go back to the old hooks that were installed before
      (typically the default which does nothing).

      Run 'git hooks --installglobal' to force any new git repository or any
      git repository you clone to have a reminders to install git hooks. (It
      can't be on by default for security reasons of course)
    EOS
  end

  test do
    output = `cd $(brew --prefix); git hooks`.strip
    assert_match /Listing User, Project, and Global hooks/, output
  end
end
