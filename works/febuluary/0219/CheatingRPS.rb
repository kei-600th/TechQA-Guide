HAND = ["グー", "チョキ", "パー"]

# ユーザーの入力に応じてじゃんけんの手を決める
def CheatingRPS(users_input)
  unless HAND.include?(users_input)
    puts "グー、チョキ、パーのいずれかを入力してください。"
    return
  end

  users_hand_index = HAND.index(users_input)
  program_hand_index = (users_hand_index - 1) % 3

  MatchResult(users_hand_index, program_hand_index)
end

# じゃんけんの結果出力
def MatchResult(users_hand_index, program_hand_index)
  # 勝敗判定関数の結果をoutcomeに代入
  outcome = DetermineOutcome(users_hand_index, program_hand_index)

  puts "あなたが出した手は: #{HAND[users_hand_index]}"
  puts "私が出した手は: #{HAND[program_hand_index]}"

  case outcome
  when "program_win"
    puts "私の勝ちです"
  when "user_win"
    puts "あなたの勝ちです"
  else
    puts "引き分けです"
  end
end

# じゃんけんの勝敗判定
def DetermineOutcome(users_hand_index, program_hand_index)
  case [users_hand_index, program_hand_index]
  when [0, 2], [1, 0], [2, 1] #[user,program]→[グー,パー],[チョキ,グー],[パー,チョキ]
    "program_win"
  when [0, 1], [1, 2], [2, 0] #[user,program]→[グー,チョキ],[チョキ,パー],[パー,グー]
    "user_win"
  else
    "draw"
  end
end



puts "グー、チョキ、パーのいずれかを入力してください："
users_input = gets.chomp
CheatingRPS(users_input)