class Argus < Formula
  desc "AI code review tool that doesn't grade its own homework"
  homepage "https://github.com/Meru143/argus"
  url "https://github.com/Meru143/argus/archive/refs/tags/argus-ai-v0.3.1.tar.gz"
  sha256 "0b02794a6d4a11109f222e6a708029270c300ccee08c4c42afb6c09325c091ef"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "argus v#{version}", shell_output("#{bin}/argus --version")
  end
end
