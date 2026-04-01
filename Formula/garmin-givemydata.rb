class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 48-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/a4/43/cd7372f1214c9982a84ebd66d4941388adebfe09992b6c2bbfea3a3b3caf/garmin_givemydata-0.1.8.tar.gz"
  sha256 "8891352e84b074230cac696aefc0dccefbd8991599304256b2354a2267bc3aca"
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
