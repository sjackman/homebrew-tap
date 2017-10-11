class Longranger < Formula
  desc "10x Genomics phasing and structural variant calling pipeline"
  homepage "https://support.10xgenomics.com/genome-exome/software/downloads/latest"
  url "https://s3-us-west-2.amazonaws.com/10x.downloads/longranger-2.1.2.tar.gz"
  version "2.1.2"
  sha256 "9bbdf2027856a1213d14c0a80c49d81a6eb167068c2ba4cbb5684e836a57ab39"
  # tag "bioinformatics"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"longranger"
  end

  test do
    system "#{bin}/longranger", "--version"
  end
end
