class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 47-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/2f/8f/c4305c09351cda97889942428e089fea1599fcb22c639be7145660c12428/garmin_givemydata-0.1.2.tar.gz"
  sha256 "2c5391ac557d431b6d628019c59eb0c4af68ea155ac9d5e2fde4552ae1438d01"
  license "AGPL-3.0-only"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      To complete setup, install the browser driver:
        playwright install chromium

      Then run:
        garmin-givemydata
    EOS
  end

  test do
    system "#{bin}/garmin-givemydata", "--help"
  end
end
