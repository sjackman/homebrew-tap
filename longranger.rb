class Longranger < Formula
  desc "10x Genomics phasing and structural variant calling pipeline"
  homepage "https://support.10xgenomics.com/genome-exome/software/downloads/latest"
  url "http://cf.10xgenomics.com/releases/genome/longranger-2.2.2.tar.gz"
  sha256 "fc89527d34563ae5afe80d6ae134a981e86a0476b3ba1abd64642dea75b90a22"
  # tag "bioinformatics"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"longranger"
  end

  test do
    system "#{bin}/longranger", "-h"
  end
end
