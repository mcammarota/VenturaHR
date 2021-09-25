package br.edu.infnet.app.usuarios;

import br.edu.infnet.domain.usuarios.Usuario;
import br.edu.infnet.infra.usuarios.UsuarioRepository;
import java.net.URI;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

@RestController
@RequestMapping({"/usuarios"})
public class UsuarioController {
    
    @Autowired
    private UsuarioRepository usuarioRepository;
    
    @GetMapping(path = "/todos-usuarios")
    public ResponseEntity listarUsuarios(){
        
        List<Usuario> lista = (List<Usuario>) usuarioRepository.findAll();
        
        return ResponseEntity.ok().body(lista);
    }
    
    @GetMapping(path = "/{id}")
    public ResponseEntity getById(@PathVariable int id){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        
        Usuario usuario = null;
        
        try{
            usuario = usuarioRepository.findById(id).get();
            
            if(usuario != null){
            
            retorno = ResponseEntity.ok().body(usuario);
        }
        } catch (Exception e){
            
        } 
        
        return retorno;
    }
    
    @GetMapping(path = {"/email/{email}"})
    public ResponseEntity getUserByEmail(@PathVariable String email){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        
        try{
            Usuario usuario = usuarioRepository.findByEmail(email);
        
            if(usuario != null){
            
                retorno = ResponseEntity.ok().body(usuario);
            }
        } catch (Exception e){
        }
        
        return retorno;
    }
    
    @PostMapping
    public ResponseEntity inserirUsuario(@RequestBody Usuario usuario){
        
        ResponseEntity retorno = ResponseEntity.badRequest().build();
        
        if(usuario != null && usuario.getId() == null 
                && usuario.getCpf() != null && usuario.getNome() != null 
                && usuario.getEmail() != null){
            
            Usuario userInserido = usuarioRepository.save(usuario);
            
            URI location = ServletUriComponentsBuilder
                    .fromCurrentRequest()
                    .buildAndExpand(userInserido)
                    .toUri();

            retorno = ResponseEntity.created(location).body(userInserido);
        }
        
        return retorno;
    }
    
}
