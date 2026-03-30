class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 47-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/de/22/b426546c430c5bf6472540d2f5dfd377f83294792bfb5f83afc78e3b9625/garmin_givemydata-0.1.1.tar.gz"
  sha256 "94ff193feefd71043ed77b0cc74a765677223e6cc54fd3ae26a069fe253bd3fa"
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
