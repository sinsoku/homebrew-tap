# frozen_string_literal: true

class MiterasCli < Formula
  desc "A command-line tool for MITERAS."
  homepage "https://github.com/sinsoku/miteras-cli"
  url "https://github.com/sinsoku/miteras-cli/releases/download/v0.1.1/miteras-x86_64-apple-darwin.zip"
  sha256 "438c871ff15335fdb463795b3ee1ec27f93c043bbd1c054f00032d37386f6235"
  version "0.1.1"

  def install
    bin.install "miteras"
  end

  test do
    system "#{bin}/miteras --version"
  end
end
