package creation.book.hp.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Properties;

import creation.book.hp.model.dto.HPbookDTO;
import creation.common.config.ConfigLocation;

public class HPbookDAO {
	private final Properties prop;

public HPbookDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "board/hp-ntc-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public int insertBoard(Connection con, HPbookDTO newBook) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertBook");
		
		return result;
	}

}
