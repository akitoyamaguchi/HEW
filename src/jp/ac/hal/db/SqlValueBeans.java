package jp.ac.hal.db;

import java.util.ArrayList;
import java.util.List;

public class SqlValueBeans {
	ArrayList<Object> value = new ArrayList<Object>();
	
	public void setSqlValue(Integer v) {
		value.add(v);
	}
	
	public void setSqlValue(String v) {
		value.add(v);
	}
	
	public void setSqlValue(Boolean v) {
		value.add(v);
	}
	
	public ArrayList<Object> getSqlValue() {
		return value;
	}
}
