class Fastascripts < Formula
  desc "Manipulate FASTA files"
  homepage "https://github.com/sjackman/fastascripts"
  url "https://github.com/sjackman/fastascripts/archive/1.0.1.tar.gz"
  sha256 "9e0d57e9a6de893152ef7093d032474866bab472484487653bf64f129fba2f79"
  head "https://github.com/sjackman/fastascripts.git"
  # tag "bioinformatics"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match "x\t4\n", pipe_output(bin/"falength", ">x\nACGT\n")
  end
end
