require 'formula'

class Dbgfm < Formula
  homepage 'https://github.com/jts/dbgfm'
  url 'https://github.com/jts/dbgfm/archive/0.1.tar.gz'
  sha1 '80cb73b5e17a10c9b3bae4fdc033ef65cafefbc0'
  head 'https://github.com/jts/dbgfm.git'

  def install
    mkdir_p [bin, include, lib]
    system 'make', 'install', "prefix=#{prefix}"
  end

  test do
    system 'dbgfm 2>&1 |grep -q dbgfm'
  end
end
