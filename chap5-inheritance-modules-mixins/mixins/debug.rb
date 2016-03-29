module Debug
  def whoami
    puts "#{self.class.name} (id: #{self.object_id}: #{self.name}"
  end
end
