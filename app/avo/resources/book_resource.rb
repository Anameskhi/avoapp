class BookResource < Avo::BaseResource
  self.title = :title
  self.includes = []
  self.search_query = -> do
    scope.ransack(id_eq: params[:q],title_cont: params[:q], m: "or").result(distinct: false)
  end

  field :id, as: :id
  field :title, as: :text
  field :author, as: :belongs_to
  field :photo, as: :file, is_image: true

end
