# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Aklog < Formula
  desc "Android or Harmony developer's Swiss Army Knife for Log"
  homepage "https://github.com/wswenyue/aklog"
  url "https://github.com/wswenyue/aklog/archive/v5.3.20.tar.gz"
  sha256 "1fef4a4fe01459bb904a6ecc4d1704002d9f4db33406e3574c980e337a6600b2"
  version '5.3.20'

  def install
    libexec.install Dir["*"]
    bin.install libexec/"aklog" => "aklog"
    bin.install libexec/"hilog" => "hilog"
    inreplace bin/"aklog", "exe_path", "#{libexec}"
    inreplace bin/"hilog", "exe_path", "#{libexec}"
  end

  test do
    system bin/"aklog", "--version"
    system bin/"hilog", "--version"
  end

end