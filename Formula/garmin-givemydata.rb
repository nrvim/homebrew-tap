class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 48-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/73/82/f35ceb69c7c3254cee654e261a7cd4e69b9f8d9465c1d3353d6a7f1a0aba/garmin_givemydata-0.1.7.tar.gz"
  sha256 "95850e4f49db79953daa7eb397e49630de9d42cd52d5fe03e3cfa103ff74bc3f"
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
