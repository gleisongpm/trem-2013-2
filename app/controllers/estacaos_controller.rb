class EstacaosController < InheritedResources::Base
	
	def build_resource_params
        [params.fetch(:estacao, {}).permit(:nome)]
    end
end
