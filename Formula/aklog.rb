# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Aklog < Formula
  desc "Android or Harmony developer's Swiss Army Knife for Log"
  homepage "https://github.com/wswenyue/aklog"
  url "https://github.com/wswenyue/aklog/archive/v5.3.24.tar.gz"
  sha256 "b3908ecbd4f1595aab29d16f28c7077353ab7e1a97c2cb81babfd94282f48620"
  version '5.3.24'

  def install
    libexec.install Dir["*"]
    bin.install libexec/"aklog" => "aklog"
    bin.install libexec/"akhos" => "akhos"
    inreplace bin/"aklog", "exe_path", "#{libexec}"
    inreplace bin/"akhos", "exe_path", "#{libexec}"
  end

  def post_install
    Dir["#{libexec}/lib/*.dylib"].each do |dylib|
      chmod 0664, dylib
      MachO::Tools.change_dylib_id(dylib, "@rpath/#{File.basename(dylib)}")
      MachO.codesign!(dylib) if Hardware::CPU.arm?
      chmod 0444, dylib
    end
  end

  test do
    system bin/"aklog", "--version"
    system bin/"akhos", "--version"
  end

end