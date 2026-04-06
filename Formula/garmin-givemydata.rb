class GarminGivemydata < Formula
  include Language::Python::Virtualenv

  desc "Get your Garmin Connect data back — 48-table SQLite + MCP server"
  homepage "https://github.com/nrvim/garmin-givemydata"
  url "https://files.pythonhosted.org/packages/15/90/1b20384f387363959237ef34b9c79504119bf41beb444426f7c210463b3a/garmin_givemydata-0.1.9.tar.gz"
  sha256 "95b9e5c9180778e54601c146260c0696856d4d23fdb6b937b5e47f42c4c4160a"
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
