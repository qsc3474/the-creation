package creation.board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import creation.common.config.ConfigLocation;

public class HPNoticeBoardDAO {
	private final Properties prop;
	
	public HPNoticeBoardDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "board/faq-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}
}
