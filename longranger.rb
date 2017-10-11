class Longranger < Formula
  desc "10x Genomics phasing and structural variant calling pipeline"
  homepage "http://support.10xgenomics.com/genome-exome/software/downloads/latest"
  url "https://s3-us-west-2.amazonaws.com/10x.downloads/longranger-2.0.1.tar.gz"
  version "2.0.1"
  sha256 "fb1f95c403f6a7b18e84aa09eb6297d336e4a4e306baab688d49eb3a304b0746"
  # tag "bioinformatics"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"longranger"
  end

  test do
    system "#{bin}/longranger", "--version"
  end
end
