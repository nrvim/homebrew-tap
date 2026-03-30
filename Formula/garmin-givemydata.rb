class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 47-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/56/07/2e995b9a9f2baca9c391795272e1da68f1a3f41c484bc9a2317c3f8bc01c/garmin_givemydata-0.1.5.tar.gz"
  sha256 "1b19f59c7d4fac062cce19f08e1989df4a420dcf0249036141beb22cdbf2d93e"
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
