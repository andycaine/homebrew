require 'formula'

class Libpano < Formula
  url 'http://downloads.sourceforge.net/project/panotools/libpano13/libpano13-2.9.18/libpano13-2.9.18.tar.gz'
  version '13-2.9.18'
  homepage 'http://panotools.sourceforge.net/'
  sha1 '23849bdbdfc9176a2b53d157e58bd24aa0e7276e'

  depends_on :libpng
  depends_on 'jpeg'
  depends_on 'libtiff'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make install"
  end
end
