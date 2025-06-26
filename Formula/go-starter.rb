class GoStarter < Formula
  desc "Comprehensive Go project generator with modern best practices"
  homepage "https://github.com/francknouama/go-starter"
  url "https://github.com/francknouama/go-starter/archive/v1.1.1.tar.gz"
  sha256 "128a96a7390169a57dcff286e76a60c5ef4078e1326268db0e06f685c0d88087"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/francknouama/go-starter/cmd.Version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/go-starter version")
  end
end