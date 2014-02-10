class LocomotivasController < InheritedResources::Base
	
	def build_resource_params
        [params.fetch(:locomotiva, {}).permit(:nome, :modelo)]
    end
	
end
