class PostResource < Avo::BaseResource
  self.title = :title
  self.includes = []
  self.search_query = lambda {
    scope.ransack(id_eq: params[:q], title_cont: params[:q], body_cont: params[:q], m: 'or').result(distinct: false)
  }

  field :id, as: :id
  field :title, as: :text
  field :body, as: :textarea
  field :user, as: :belongs_to

  # add fields here
end
