class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  # UnsupportedOperation という名前の例外クラスを新しく定義する
  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)

    # ALLOWED_OPERATIONSにoperationが含まれていない時にUnsupportedOperation を発生させる
    raise UnsupportedOperation.new("Unsupported operation") unless ALLOWED_OPERATIONS.include?(operation)
    
    # first_operand または second_operand が数値でない場合に ArgumentError を発生させる
    unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
      raise ArgumentError.new("数字でないものが含まれています")
    end
  
    result = first_operand.send(operation, second_operand)
    "#{first_operand} #{operation} #{second_operand} = #{result}"

    # 0で割られた時にrescue処理を行う
    rescue ZeroDivisionError
    "Division by zero is not allowed."
  end
end
