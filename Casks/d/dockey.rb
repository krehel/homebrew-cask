cask "dockey" do
  version "1.1"
  sha256 :no_check

  url "https://dockey.publicspace.co/download/Dockey-latest.zip"
  name "dockey"
  desc "Advanced Dock preferences"
  homepage "https://dockey.publicspace.co/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "dockey.app"

  uninstall quit: "com.igorstumberger.dockey"

  caveats do
    requires_rosetta
  end
end
