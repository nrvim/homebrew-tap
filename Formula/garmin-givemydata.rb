class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 48-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/32/db/00bc02e009bdc01cea4d6e98551d8fadc1c95788a5ee27b9db1f6e08a2a4/garmin_givemydata-0.1.6.tar.gz"
  sha256 "f7b19b4b241b67d6dfb302bb2d45ba0c09b4d49ac39c6aac4980c477c5177bee"
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
