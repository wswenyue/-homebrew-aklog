# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Aklog < Formula
  desc "Android or Harmony developer's Swiss Army Knife for Log"
  homepage "https://github.com/wswenyue/aklog"
  url "https://github.com/wswenyue/aklog/archive/v5.3.22.tar.gz"
  sha256 "f43d2d7c29c98e4b1471a14d3976ce588e008d8e19089be61305310f7a368ac8"
  version '5.3.22'

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