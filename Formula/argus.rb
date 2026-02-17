class Argus < Formula
  desc "AI code review tool that doesn't grade its own homework"
  homepage "https://github.com/Meru143/argus"
  url "https://github.com/Meru143/argus/archive/refs/tags/argus-ai-v0.3.2.tar.gz"
  sha256 "d607fc628c592923430fbdbc3c3906ee281368c3c2e87d38af786cb880804dca"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "argus v#{version}", shell_output("#{bin}/argus --version")
  end
end
