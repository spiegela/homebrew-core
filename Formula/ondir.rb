class Ondir < Formula
  desc "Automatically execute scripts as you traverse directories"
  homepage "https://swapoff.org/ondir.html"
  url "https://swapoff.org/files/ondir/ondir-0.2.4.tar.gz"
  sha256 "52921cdcf02273e0d47cc6172df6a0d2c56980d724568276acb0591e0bda343a"
  license "GPL-2.0-or-later"
  head "https://github.com/alecthomas/ondir.git", branch: "master"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "cacbe89a3130e52ca8f9ab87a8f4b304c0f6e190dc925fdd4d71c2adffe4ddfa"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "1e71b07b9b9b4d79d26f3d44e04da4e81e2600ce278706d687ff7050f5355382"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "5d3ae1ec47c7ed7ca8d8d9b27cf3c102b5a0f6e0df230a4e9b543039934125fe"
    sha256 cellar: :any_skip_relocation, ventura:        "1c9633e8cdda40f38255b89a7be9200706bd4f608dbb23eea81f0e3ab54dce2f"
    sha256 cellar: :any_skip_relocation, monterey:       "4419c021fa7a33eca72284febc81d572987ab5c9ceea8c0ab7e49bcc6177a65b"
    sha256 cellar: :any_skip_relocation, big_sur:        "839d51e0be171f7cb5a0c61c0c81d5d58676d210080b9d75c047b8f965b40652"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "af6c1d77f136f3ccab4ef5f6114aab283514d7bf01a893d9948e5017d1d366ea"
  end

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
