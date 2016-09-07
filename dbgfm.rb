class Dbgfm < Formula
  desc "FM-index representation of a de Bruijn graph"
  homepage "https://github.com/jts/dbgfm"
  url "https://github.com/jts/dbgfm/archive/0.1.tar.gz"
  sha256 "9660a191d53dd47ed0da90c422b5632cb5bcc477ef3e287e45ad7090841570cc"
  head "https://github.com/jts/dbgfm.git"
  # tag "bioinformatics"

  def install
    mkdir_p [bin, include, lib]
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "usage", shell_output(bin/"dbgfm", 1)
  end
end
