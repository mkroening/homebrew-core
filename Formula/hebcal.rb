class Hebcal < Formula
  desc "Perpetual Jewish calendar for the command-line"
  homepage "https://github.com/hebcal/hebcal"
  url "https://github.com/hebcal/hebcal/archive/v4.14.tar.gz"
  sha256 "84306f4bc4f665459593471be14ee2c18af1c932fc90a1b6a3a0b854dae67be4"

  bottle do
    cellar :any_skip_relocation
    sha256 "05e964234b746361d9272ce88944e652cc000ff4a3afb03f202bc7000d1fe607" => :mojave
    sha256 "95fd596027fcf571cd1091be417f28ad59ee838aab4c0769f8f36ae10896eeb0" => :high_sierra
    sha256 "b520aadc300e1660d66e8ee26712405b3581ad32b20c119908c5890d90f721e9" => :sierra
    sha256 "55630d52364af42172ae1abc10847110fabe93f94ae21708863803be7c35fdc9" => :el_capitan
    sha256 "37d26466a7deb14cb2f38cc7eff1621eef652239bb973b3f5c5c870cb624399d" => :yosemite
  end

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  def install
    system "./configure", "--prefix=#{prefix}", "ACLOCAL=aclocal", "AUTOMAKE=automake"
    system "make", "install"
  end

  test do
    system "#{bin}/hebcal"
  end
end
