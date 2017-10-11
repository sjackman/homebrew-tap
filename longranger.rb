class Longranger < Formula
  desc "10x Genomics phasing and structural variant calling pipeline"
  homepage "https://support.10xgenomics.com/genome-exome/software/downloads/latest"
  url "https://s3-us-west-2.amazonaws.com/10x.files/releases/genome/longranger-2.1.3.tar.gz"
  version "2.1.3"
  sha256 "5af5025ab3450d5c234f07c26b9c5e0b74cde9c114b755d59ce4ef11c54afda9"
  # tag "bioinformatics"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"longranger"
  end

  test do
    system "#{bin}/longranger", "--version"
  end
end
