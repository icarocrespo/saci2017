package dao;

import modelo.Participante;
import java.util.List;

/**
 *
 * @author icaro
 */
public class ParticipanteDAO extends GenericDAO<Participante, Integer> {

    public ParticipanteDAO() {
        super(Participante.class);
    }

//    public Participante buscarCPF(String cpf) throws Exception {
//        ParticipanteDAO dao = new ParticipanteDAO();
//        List<Participante> listaParticipante = dao.listar();
//        Participante participante = new Participante();
//        
//        for (Participante part : listaParticipante) {
//            if (part.getCpf().equals(cpf)) {
//                participante = dao.buscarPorChavePrimaria(part.getId());
//            }
//        }
//        return participante;
//    }
}