# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Aklog < Formula
  desc "Android developer's Swiss Army Knife for Log"
  homepage "https://github.com/wswenyue/aklog"
  #https://github.com/wswenyue/aklog/archive/v5.0.4.tar.gz
  url "https://github.com/wswenyue/aklog/archive/v5.0.28.tar.gz"
  #699b3d936f1456d9893c5f34850f959b5b3492119eff518c6366d4935c7449a2
  sha256 "7192ebb0c8e28a7616f8b7cc2ba3aa8ff2ee1a49ee2c22654060d15d7865846b"


  def install
    libexec.install Dir["*"]
    bin.install libexec/"aklog" => "aklog"
    inreplace bin/"aklog", "exe_path", "#{libexec}"
  end

  test do
    system "false"
  end

end