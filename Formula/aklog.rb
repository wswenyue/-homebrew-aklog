# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Aklog < Formula
  desc "Android developer's Swiss Army Knife for Log"
  homepage "https://github.com/wswenyue/aklog"
  url "https://github.com/wswenyue/aklog/archive/v5.3.6.tar.gz"
  sha256 "f31a3a493ca540c2b662df84f88d3c7bdc1b9549c34da701f8d4b8261f2b3289"


  def install
    libexec.install Dir["*"]
    bin.install libexec/"aklog" => "aklog"
    inreplace bin/"aklog", "exe_path", "#{libexec}"
  end

  test do
    system "false"
  end

end