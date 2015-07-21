class Samskrit < Formula
  desc "Tools to manipulate SAM and BAM files"
  homepage "https://github.com/sjackman/samskrit"
  # tag "bioinformatics"

  url "https://github.com/sjackman/samskrit/archive/1.0.0.tar.gz"
  sha256 "c04651514f9e6e55f62b2bd6610f1a5febb9e52be53587fab27b6473833bd861"

  head "https://github.com/sjackman/samskrit.git"

  depends_on "pysam" => :python

  def install
    system "make", "install", "prefix=#{prefix}"
    doc.install "README.md"
  end

  test do
    system "#{bin}/samskrit-swap", "--version"
  end
end
