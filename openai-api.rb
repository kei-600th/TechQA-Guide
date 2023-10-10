require 'openai'

prompt = "こんにちは!"
engine = "gpt-4"
max_tokens = 100

response = OpenAI::Completion.create(
  engine: engine,
  prompt: prompt,
  max_tokens: max_tokens
)

puts response.choices[0].text.strip
