# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Aklog < Formula
  name "Aklog"
  desc "Android developer's Swiss Army Knife for Log"
  homepage "https://github.com/wswenyue/aklog"
  version "5.3.10"
  url "https://github.com/wswenyue/aklog/archive/v5.3.10.tar.gz"
  sha256 "dd186f5c5352b44e29bee81ee6f7b94351e75239ded2fdf4896789e69da5a649"


  def install
    libexec.install Dir["*"]
    bin.install libexec/"aklog" => "aklog"
    inreplace bin/"aklog", "exe_path", "#{libexec}"
  end

  test do
    system "false"
  end

end