class UserDecorator < Draper::Decorator
  delegate_all

  def as_json(*)
    {
      id: id,
      first_name: first_name,
      last_name: last_name,
      email: email,
      created_at: created_at.iso8601,
      updated_at: updated_at.iso8601
    }
  end
end
