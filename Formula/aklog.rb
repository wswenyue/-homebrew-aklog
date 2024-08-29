# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Aklog < Formula
  desc "Android or Harmony developer's Swiss Army Knife for Log"
  homepage "https://github.com/wswenyue/aklog"
  url "https://github.com/wswenyue/aklog/archive/v5.3.21.tar.gz"
  sha256 "cd3690dae75dfd49eb1e7897ead22866425ac5c4a9ee481652bae2efb614b960"
  version '5.3.21'

  def install
    libexec.install Dir["*"]
    bin.install libexec/"aklog" => "aklog"
    bin.install libexec/"akhos" => "akhos"
    inreplace bin/"aklog", "exe_path", "#{libexec}"
    inreplace bin/"akhos", "exe_path", "#{libexec}"
  end

  test do
    system bin/"aklog", "--version"
    system bin/"akhos", "--version"
  end

end