
package br.edu.infnet.app.vagas;

import br.edu.infnet.domain.vagas.Criterio;
import br.edu.infnet.domain.vagas.Vaga;
import br.edu.infnet.infra.vagas.VagaRepository;
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
@RequestMapping(path = {"/vagas"})
public class VagaController {
    
    @Autowired
    private VagaRepository vagaRepository;
    
    @GetMapping(path = "/todas-vagas")
    public ResponseEntity listarVagas(){
        
        List<Vaga> lista = (List<Vaga>) vagaRepository.findAll();
        
        return ResponseEntity.ok().body(lista);
    }
    
    @GetMapping(path = "/usuario/{idUsuario}")
    public ResponseEntity getByUser(@PathVariable int idUsuario){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        try{
            
            List<Vaga> lista = vagaRepository.findByIdUsuario(idUsuario);
            if(!lista.isEmpty()){
                
                retorno = ResponseEntity.ok().body(lista);
            }
        } catch (Exception e){
            
        } return retorno;
    }
    
    @GetMapping(path = "/cargo/{pesquisa}")
    public ResponseEntity getByJob(@PathVariable String pesquisa){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        try{
            
            List<Vaga> lista = vagaRepository.findByCargoContainingIgnoreCase(pesquisa);
            if(!lista.isEmpty()){
                
                retorno = ResponseEntity.ok().body(lista);
            }
        } catch (Exception e){
            
        } return retorno;
    }
    
    @GetMapping(path = "/cidade/{pesquisa}")
    public ResponseEntity getByCity(@PathVariable String pesquisa){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        try{
            
            List<Vaga> lista = vagaRepository.findByCidadeContainingIgnoreCase(pesquisa);
            if(!lista.isEmpty()){
                
                retorno = ResponseEntity.ok().body(lista);
            }
        } catch (Exception e){
            
        } return retorno;
    }
    
    @PostMapping
    public ResponseEntity publicarVaga(@RequestBody Vaga vaga){
        
        ResponseEntity retorno = ResponseEntity.badRequest().build();
        List<Criterio> listaCriterio = vaga.getCriterioList();
        if(listaCriterio != null && !listaCriterio.isEmpty()){
            
            for (Criterio criterio : listaCriterio){
                
                criterio.setIdVaga(vaga);
            }
            Vaga gravada = vagaRepository.save(vaga);
            
            URI location = ServletUriComponentsBuilder
                    .fromCurrentRequest()
                    .buildAndExpand(gravada)
                    .toUri();

            retorno = ResponseEntity.created(location).body(gravada);
        }
        return retorno;
    }
}
