class Argus < Formula
  desc "AI code review tool that doesn't grade its own homework"
  homepage "https://github.com/Meru143/argus"
  url "https://github.com/Meru143/argus/archive/refs/tags/argus-ai-v0.5.6.tar.gz"
  sha256 "c5c34a49b6b5d1501083eb7b41bb220d9520d672df24663ec7088ddcfc84e1ac"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "argus #{version}", shell_output("#{bin}/argus --version")
  end
end
