require "ensure_array/version"

module EnsureArray
  def self.ensure_array(object, nil_value = [])
    if object.is_a?(Array)
      object
    elsif object.nil?
      nil_value
    else
      [object]
    end
  end
end

def EnsureArray(*args)
  EnsureArray.ensure_array(*args)
end
