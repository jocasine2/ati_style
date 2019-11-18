module MaterializeAtiHelper
	def title(page_title)
    content_for(:title) { page_title }
  end

# Mover esse trecho de código para o ApplicationController
  def toastr(type, body)
		flash["#{type}"] = body
	end
end
