# encoding utf-8

class TimepadItemsExporter
  def self.run(maillist_id)
    users = User.where(subscribe: true)
    subscribers = []

    users.find_each do |u|
      subscriber = {
        email: u.email,
        name: u.first_name,
        surname: u.last_name,
        company: u.company,
        phone: u.phone,
        comment: "#{u.university} #{u.course}"
      }

      Timepad.maillist.add_items maillist_id, [subscriber]
    end
  end
end
