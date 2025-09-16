class Avo::Resources::RecurringTransaction < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }
  
  def fields
    field :id, as: :id
    field :amount, as: :number
    field :interval, as: :text
    field :start_date, as: :date
    field :name, as: :text
    field :description, as: :textarea
    field :bank_account_id, as: :number
    field :bank_account, as: :belongs_to
  end
end
