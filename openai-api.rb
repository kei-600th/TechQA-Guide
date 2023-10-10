require 'openai'

# APIキーは環境変数から取得（GitHub Actionsで設定）
api_key = ENV["OPENAI_API_KEY"]

# OpenAIのクライアントを初期化
client = OpenAI::Client.new(access_token: api_key)

# GPT-3（またはGPT-4）でのテキスト生成リクエスト
response = client.chat(
      parameters: {
        model: "gpt-4",
        messages: "こんにちは!",
        temperature: 0.7
      }
    )

# レスポンスからテキストを取得して出力
puts response['choices'][0]['text'].strip
