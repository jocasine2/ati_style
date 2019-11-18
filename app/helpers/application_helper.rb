module ApplicationHelper
	def title(page_title)
    content_for(:title) { page_title }
  end
  
  def toastr_flash
		flash.each_with_object([]) do |(type, message), flash_messages|
		  type = 'success' if type == 'notice'
		  type = 'error' if type == 'alert'
		  text = "<script>toastr['#{type}']('#{message}')</script>"
		  flash_messages << text.html_safe if message
		end.join("\n").html_safe
	end
end
