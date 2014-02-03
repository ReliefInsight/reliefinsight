class Requester < User
  default_scope { includes(:roles).where(roles: {name: 'requester'}) }

  has_many :requester_product_relations, foreign_key: 'user_id'
  has_many :products, through: :requester_product_relations

  after_create :set_requester_role

  private

    def set_requester_role
      self.roles << Role.find_or_create_by(name: 'requester')
    end
end
