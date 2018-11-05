# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Aklog < Formula
  desc "Android developer's Swiss Army Knife for Log"
  homepage "https://github.com/wswenyue/aklog"
  url "https://github.com/wswenyue/aklog/archive/v0.1.tar.gz"
  sha256 "28cc789bb544e252fb5d9353ccb4f4cbcbeb36909e06bec8397b32cee7b6e0a8"
  # depends_on "cmake" => :build

  def install
    libexec.install Dir["*"]
    bin.install libexec/"aklog" => "aklog"
    inreplace bin/"aklog", "exe_path", "#{libexec}"
  end

end
