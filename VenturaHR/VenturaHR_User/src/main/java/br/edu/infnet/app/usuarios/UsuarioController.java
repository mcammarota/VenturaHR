package br.edu.infnet.app.usuarios;

import br.edu.infnet.domain.usuarios.Usuario;
import br.edu.infnet.infra.usuarios.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping({"/usuarios"})
public class UsuarioController {
    
    @Autowired
    private UsuarioRepository usuarioRepository;
    
    @GetMapping(path = "/{id}")
    public ResponseEntity getById(@PathVariable int id){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        Usuario usuario = this.findById(id);
        
        if(usuario != null){
            
            retorno = ResponseEntity.ok().body(usuario);
        }
        
        return retorno;
    }
    
    @GetMapping(path = {"/email/{email}"})
    public ResponseEntity getUserByEmail(@PathVariable String email){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        
        try{
            Usuario usuario = usuarioRepository.findyByEmail(email);
        
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
        
        //fazer as validações
        
        if(usuario != null && usuario.getId() == null){
            
            Usuario userInserido = usuarioRepository.save(usuario);
            retorno = ResponseEntity.ok().body(userInserido);
        }
        
        return retorno;
    }
    
    @PutMapping
    public ResponseEntity attUsuario(@RequestBody Usuario usuario){
        
        ResponseEntity retorno = ResponseEntity.badRequest().build();

        if(usuario != null && usuario.getId() != null){
            
            Usuario userAtualizado = this.findById(usuario.getId());
            if(userAtualizado != null){
                try{
                    
                    userAtualizado = usuarioRepository.save(usuario);
                    retorno = ResponseEntity.ok().body(userAtualizado);
                } catch (Exception e){
                }
            }
        }
        return retorno;
    }
    
    private Usuario findById(int id){
        
        Usuario retorno = null;
        
        try{
            
            retorno = usuarioRepository.findById(id).get();
        } catch (Exception e){
            
        }
        return retorno;
    }
}
