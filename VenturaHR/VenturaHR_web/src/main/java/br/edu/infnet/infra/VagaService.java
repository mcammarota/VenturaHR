
package br.edu.infnet.infra;

import br.edu.infnet.domain.Vaga;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.core.MediaType;
import java.util.List;

public class VagaService {
    
    private final String REST_URI = "http://localhost:8082/vagas";
    private final Client client = ClientBuilder.newClient();
    
    public List<Vaga> getByIdUsuario(int idUsuario){
        
        return client
                .target(REST_URI)
                .path("usuario")
                .path(String.valueOf(idUsuario))
                .request(MediaType.APPLICATION_JSON)
                .get(List.class);
    }
    
    public List<Vaga> listarTodasVagas(){
        
        return client
                .target(REST_URI)
                .path("todas-vagas")
                .request(MediaType.APPLICATION_JSON)
                .get(List.class);
    }
    
    public Vaga criarVaga(Vaga vaga){
        
        return client
                .target(REST_URI)
                .request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(vaga, MediaType.APPLICATION_JSON), Vaga.class);
    }
}
