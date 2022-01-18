require "open3"

CLIResult = Struct.new(:input, :ruby, :result)
RSpec.describe do
  def run_cli(input)
    stdin, pstdout, _process = Open3.popen2e("ruby ./main.rb")
    stdin.write input + ?\n
    stdin.close
    stdout = pstdout.read
    pstdout.close
    CLIResult.new(
      input,
      stdout.match(/あいて：(.+)\n/)[1],
      stdout.match(/あいて：.+\n(.+)/)[1],
    )
  end

  def run_until(input, ruby)
    r = nil
    until r&.ruby == ruby
      r = run_cli(input)
    end
    r
  end

  context "グーの場合" do
    let(:input) { "グー" }
    it "チョキに勝つ" do
      expect(run_until(input, "チョキ").result).to eq "あなたの勝ちです"
    end
    it "パーに負ける" do
      expect(run_until(input, "パー").result).to eq "あなたの負けです"
    end
    it "グーだとあいこになる" do
      expect(run_until(input, "グー").result).to eq "あいこです"
    end
  end
  context "チョキの場合" do
    let(:input) { "チョキ" }
    it "パーに勝つ" do
      expect(run_until(input, "パー").result).to eq "あなたの勝ちです"
    end
    it "グーに負ける" do
      expect(run_until(input, "グー").result).to eq "あなたの負けです"
    end
    it "チョキだとあいこになる" do
      expect(run_until(input, "チョキ").result).to eq "あいこです"
    end
  end
  context "パーの場合" do
    let(:input) { "パー" }
    it "グーに勝つ" do
      expect(run_until(input, "グー").result).to eq "あなたの勝ちです"
    end
    it "チョキに負ける" do
      expect(run_until(input, "チョキ").result).to eq "あなたの負けです"
    end
    it "パーだとあいこになる" do
      expect(run_until(input, "パー").result).to eq "あいこです"
    end
  end
end
