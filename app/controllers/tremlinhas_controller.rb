class TremlinhasController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:tremlinha, {}).permit(:locomotiva_id, :linha_id, :destino)]
    end
end
