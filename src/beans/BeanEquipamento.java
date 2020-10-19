package beans;

public class BeanEquipamento {
	
	private String os;
	private String descricao;
	private String tecnico;
	private String data;
	private String codCliente;
	
	public void setCodCliente(String codCliente) {
		this.codCliente = codCliente;
	}
	
	public String getCodCliente() {
		return codCliente;
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
	public String getTecnico() {
		return tecnico;
	}
	public void setTecnico(String tecnico) {
		this.tecnico = tecnico;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	
	

}
