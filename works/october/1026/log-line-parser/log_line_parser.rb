class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(":")[1].strip
  end

  def log_level
    @line.split(":")[0].slice(1..-2).downcase
  end

  def reformat
    return message + " (#{log_level})"
  end
end
