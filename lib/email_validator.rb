class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A[-.\w]+@[-.\w]+\.[a-z]{2,}\z/i
      record.errors.add(attribute, :email, options.merge(value: value))
    end
  end
end

