package br.edu.infnet.infra;

import br.edu.infnet.domain.Usuario;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.Entity;
import jakarta.ws.rs.core.MediaType;

public class UsuarioService {
    
    private final String REST_URI = "http://localhost:5000/usuarios";
    private final Client client = ClientBuilder.newClient();
    
    public Usuario getByEmail(String email){
        
        return client
                .target(REST_URI)
                .path("email")
                .path(email)
                .request(MediaType.APPLICATION_JSON)
                .get(Usuario.class);
    }
    
    public Usuario criarConta(Usuario usuario){
        
        return client
                .target(REST_URI)
                .request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(usuario, MediaType.APPLICATION_JSON), Usuario.class);
    }
    
}
