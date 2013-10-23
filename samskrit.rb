require 'formula'

class Samskrit < Formula
  homepage 'https://github.com/sjackman/samskrit'
  head 'https://github.com/sjackman/samskrit.git'

  depends_on 'pysam' => :python

  def install
    system 'make', 'install', 'prefix=' + prefix
    doc.install 'README.md'
  end

  test do
    system 'samskrit-swap --version'
  end
end
