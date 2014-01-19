class Donor < User
  default_scope includes(:roles).where(roles: {name: 'donor'})

  has_many :donor_product_relations, foreign_key: 'user_id'
  has_many :products, through: :donor_product_relations

  after_create :set_donor_role

  private

    def set_donor_role
      self.roles << Role.find_or_create_by_name('donor')
    end
end
