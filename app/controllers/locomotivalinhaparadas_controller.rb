class LocomotivalinhaparadasController < InheritedResources::Base
def build_resource_params
        [params.fetch(:locomotivalinhaparada, {}).permit(:tremlinha_id, :parada_id, :horachegada, :horapartida)]
    end
end
