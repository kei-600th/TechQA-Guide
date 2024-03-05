HAND = ["グー", "チョキ", "パー"]

# ユーザーの入力に応じてじゃんけんの手を決める
def CheatingJanken(users_input)
  unless HAND.include?(users_input)
    puts "グー、チョキ、パーのいずれかを入力してください。"
    return
  end

  users_hand_index = HAND.index(users_input)
  program_hand_index = (users_hand_index - 1) % 3

  PrintJankenResult(users_hand_index, program_hand_index)
end

# じゃんけんの結果出力
def PrintJankenResult(users_hand_index, program_hand_index)
  # 勝敗判定関数の結果をwinnerに代入
  winner = CalculateJankenWinner(users_hand_index, program_hand_index)

  puts "あなたが出した手は: #{HAND[users_hand_index]}"
  puts "私が出した手は: #{HAND[program_hand_index]}"

  case winner
  when "program"
    puts "私の勝ちです"
  when "user"
    puts "あなたの勝ちです"
  else
    puts "引き分けです"
  end
end

# じゃんけんの勝敗判定
def CalculateJankenWinner(user_hand_index, program_hand_index)
  # 勝ちパターンを定義: 各手が勝つ対象の手のインデックスをマッピング
  win_patterns = {
    0 => 1, # グーはチョキに勝つ
    1 => 2, # チョキはパーに勝つ
    2 => 0  # パーはグーに勝つ
  }

  if win_patterns[user_hand_index] == program_hand_index
    "user" # ユーザーの勝ち
  elsif win_patterns[program_hand_index] == user_hand_index
    "program" # プログラムの勝ち
  else
    "draw" # 引き分け
  end
end



puts "グー、チョキ、パーのいずれかを入力してください："
users_input = gets.chomp
CheatingJanken(users_input)