class UserResource < Avo::BaseResource
  self.title = :full_name
  self.includes = []
  self.search_query = -> do
    scope.ransack(id_eq: params[:q],full_name_cont: params[:q], m: "or").result(distinct: false)
  end

  field :id, as: :id
  field :email, as: :gravatar
  field :email, as: :text
  field :full_name, as: :text
  field :password, as: :text

  field :post, as: :has_many



  # add fields here
end
