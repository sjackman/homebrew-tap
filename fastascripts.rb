require 'formula'

class Fastascripts < Formula
  homepage 'https://github.com/sjackman/fastascripts'
  url 'https://github.com/sjackman/fastascripts/archive/1.0.1.tar.gz'
  sha1 '654c559564035a5263e5e29f07ea4df90e63188a'
  head 'https://github.com/sjackman/fastascripts.git'

  def install
    system "make prefix=#{prefix} install"
  end

  def test
    system "echo '>1' |faclean >/dev/null"
  end
end
