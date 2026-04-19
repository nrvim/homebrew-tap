class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 48-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/26/c9/a17a7f1cfdbecdea6649a32a8dd18f2c2ce01900bbe92ccbb57206699974/garmin_givemydata-0.1.10.tar.gz"
  sha256 "e44ce2d1e05096084edcd7b545e73ab13d41c2d7995354b5aa2c0ed26c018a94"
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
