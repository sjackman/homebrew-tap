require 'formula'

class Fastascripts < Formula
  homepage 'https://github.com/sjackman/fastascripts'
  url 'https://github.com/sjackman/fastascripts/archive/1.0.tar.gz'
  sha1 '7d72663ef024fa0c22dca7ac6b7baf1169ed8638'
  head 'https://github.com/sjackman/fastascripts.git'

  def install
    system "make prefix=#{prefix} install"
  end

  def test
    system "faclean <<<'>1' >/dev/null"
  end
end
