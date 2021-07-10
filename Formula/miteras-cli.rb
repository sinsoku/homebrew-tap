# frozen_string_literal: true

class MiterasCli < Formula
  desc "Command-line tool for MITERAS"
  homepage "https://github.com/sinsoku/miteras-cli"
  url "https://github.com/sinsoku/miteras-cli/releases/download/v0.2.1/miteras-x86_64-apple-darwin.zip"
  version "0.2.1"
  sha256 "c1e0ddaa8ee88251985dd4e3242021e52d335aadb80ec19ca75d397732e43657"

  def install
    bin.install "miteras"

    # Install completion files
    bash_completion.install "misc/miteras.bash" => "miteras"
    zsh_completion.install "misc/_miteras"
  end

  test do
    system "#{bin}/miteras", "--version"
  end
end
