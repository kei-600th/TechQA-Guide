require 'openai'

# APIキーは環境変数から取得（GitHub Actionsで設定）
api_key = ENV["OPENAI_API_KEY"]

# OpenAIのクライアントを初期化
client = OpenAI::Client.new(access_token: api_key)

# Diff内容を読み込み
diff_text = File.read("pr.diff")

# GPT-3（またはGPT-4）でのテキスト生成リクエスト
response = client.chat(
      parameters: {
        model: "gpt-4",
        messages: [{ role: "user", content: "私は未経験からエンジニア転職を目指してプログラミング学習をしています。以下は自分のプログラミング学習に対するアウトプットです。これに対して良い点と改善点を挙げてフィードバックをしてください。\n" + diff_text }],
        temperature: 0.7
      }
    )

# レスポンスからテキストを取得して出力
puts response.dig("choices", 0, "message", "content")
