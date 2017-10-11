class Longranger < Formula
  desc "10x Genomics phasing and structural variant calling pipeline"
  homepage "https://support.10xgenomics.com/genome-exome/software/downloads/latest"
  url "http://cf.10xgenomics.com/releases/genome/longranger-2.1.6.tar.gz"
  sha256 "3e4aafc353a3d7f5cd0affd901cb779d45cca7e96ffd0b9a6a89046342cd6ade"
  # tag "bioinformatics"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"longranger"
  end

  test do
    system "#{bin}/longranger", "--version"
  end
end
