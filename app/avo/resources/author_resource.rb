class AuthorResource < Avo::BaseResource
  self.title = :first_name
  self.includes = []
  self.search_query = lambda {
    scope.ransack(id_eq: params[:q], first_name_cont: params[:q], m: 'or').result(distinct: false)
  }

  field :id, as: :id
  field :first_name, as: :text
  field :last_name, as: :text
  field :email, as: :text
end
