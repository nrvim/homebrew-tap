class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 48-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/b2/82/4705c85fedcc8fec8be03761db1651f08186157e2a4854fb1da3aab77e6c/garmin_givemydata-0.1.11.tar.gz"
  sha256 "588e5cd25e96377645d4cf6190cbe4fd83a660d6a9310b8e5b882f5ba772002e"
  license "AGPL-3.0-only"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Google Chrome is required for authentication.
      Install from: https://www.google.com/chrome/

      Then run:
        garmin-givemydata
    EOS
  end

  test do
    system "#{bin}/garmin-givemydata", "--help"
  end
end
