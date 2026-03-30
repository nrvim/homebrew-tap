class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 47-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/0c/76/b9265990e4c1e15cb0936796f05083cc50ca41d75d899aa0aabf64bb9335/garmin_givemydata-0.1.4.tar.gz"
  sha256 "809d97df27efac1c4bc829f86c7bf0836cabb4aa2a1e0574711a7dc475af1b2f"
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
