module Admin
  class NoticiasController < Admin::BaseController

    crudify :noticia,
            :title_attribute => 'titulo', :xhr_paging => true

  end
end
