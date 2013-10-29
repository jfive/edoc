package br.com.jfive.edoc.models;


import javax.persistence.GeneratedValue;
import javax.persistence.Id;


public class Entity {
	
	@Id @GeneratedValue
	private Long id;
	
	public final void setId(Long id) {
		this.id = id;
	}

	public final Long getId() {
		return id;
	}
	
	@Override
	public final boolean equals(Object obj) {
		if (obj == null) {
			return false;
		}
		if (this == obj) {
			return true;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		final Entity other = (Entity) obj;
		if (id != other.id && (id == null || !id.equals(other.id))) {
			return false;
		}
		return true;
	}

	@Override
	public final int hashCode() {
		int hash = 7;
		hash = 17 * hash + (this.getId() != null ? this.getId().hashCode() : 0);
		return hash;
	}
}
