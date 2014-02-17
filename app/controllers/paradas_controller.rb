class ParadasController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:parada, {}).permit(:linha_id, :estacao_id)]
    end
end
