require 'rspec'
require_relative 'CheatingJanken'

describe 'CheatingJanken' do
  it 'ユーザーがグーを出した場合、私の勝ちですと出力されること' do
    expect { CheatingJanken("グー") }.to output("あなたが出した手は: グー\n私が出した手は: パー\n私の勝ちです\n").to_stdout
  end

  it 'ユーザーがチョキを出した場合、私の勝ちですと出力されること' do
    expect { CheatingJanken("チョキ") }.to output("あなたが出した手は: チョキ\n私が出した手は: グー\n私の勝ちです\n").to_stdout
  end

  it 'ユーザーがパーを出した場合、私の勝ちですと出力されること' do
    expect { CheatingJanken("パー") }.to output("あなたが出した手は: パー\n私が出した手は: チョキ\n私の勝ちです\n").to_stdout
  end

  it 'ユーザーが無効な入力をした場合、適切なメッセージが出力されること' do
    expect { CheatingJanken("無効な入力") }.to output("グー、チョキ、パーのいずれかを入力してください。\n").to_stdout
  end
end
