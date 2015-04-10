require "ensure_array/version"

def EnsureArray(object, nil_value = [])
  if object.is_a?(Array)
    object
  elsif object.nil?
    nil_value
  else
    [object]
  end
end
