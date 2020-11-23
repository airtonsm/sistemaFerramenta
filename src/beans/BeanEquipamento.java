package beans;

public class BeanEquipamento extends BeanCliente {
	
	private int id_cliente;
	private String os;
	private String descricao;
	private String nome;
	private String status;
	
	
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getId_cliente() {
		return id_cliente;
	}
	public void setId_cliente(int id_cliente) {
		this.id_cliente = id_cliente;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public String status_equip(int valor) {
		
		if(valor == 1) {
			status = "Aguardando Conserto";
		}
		else if(valor == 2){
			status = "Em manutenção";
		}
		else if(valor == 3){
			status = "Máquina Pronta";
		}
		else {
			status = "Houve algum erro";
		}
		return status;
	}
	
	
	
}