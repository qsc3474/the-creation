package creation.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import creation.common.config.ConfigLocation;



public class MemberDAO {
	
	private final Properties prop;
	
	public MemberDAO() {
	
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "member/member-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}
}