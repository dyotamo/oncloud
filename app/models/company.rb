class Company < ApplicationRecord
  validates_presence_of :name, :description,
                        :address, :city, :category

  before_save do
    # Slugify
    self.slug = self.name.parameterize
  end
end
