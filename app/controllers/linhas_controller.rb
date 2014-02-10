class LinhasController < InheritedResources::Base
	
	def build_resource_params
        [params.fetch(:linha, {}).permit(:nome)]
    end
end
