require 'openai'

# APIキーは環境変数から取得（GitHub Actionsで設定）
api_key = ENV["OPENAI_API_KEY"]

# OpenAIのクライアントを初期化
client = OpenAI::Client.new(access_token: api_key)

# current_prompt.txtからプロンプトを読み込む
current_prompt = File.read("current_prompt.txt")

# Diff内容を読み込み
diff_text = File.read("pr.diff")

# プロンプトにDiff内容を追加
current_prompt.sub!('[アウトプット]', diff_text)

# GPT-3（またはGPT-4）でのテキスト生成リクエスト
response = client.chat(
      parameters: {
        model: "gpt-4",
        messages: [{ role: "user", content: current_prompt }],
        temperature: 0.7
      }
    )

# レスポンスからテキストを取得して出力
puts response.dig("choices", 0, "message", "content")
