package creation.board.model.dao;

import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.greedy.jsp.member.model.dto.MemberDTO;

import creation.board.model.dto.HPFAQBoardDTO;
import creation.common.config.ConfigLocation;

public class HPFAQBoardDAO {
	
	private final Properties prop;
	
	public HPFAQBoardDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "board/faq-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public List<HPFAQBoardDTO> selectList(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		
		List<HPFAQBoardDTO> HPFAQList = null;
		
		try {
			int i = 0;
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			HPFAQList = new ArrayList<>();
			
			while(rset.next()) {
				
				i++;
				
				HPFAQBoardDTO boardDTO = new HPFAQBoardDTO();
				boardDTO.setWriter(new MemberDTO());
				boardDTO.setHpBdNo(rset.getInt("HP_BD_NO"));
				boardDTO.setHpBdTitle(rset.getString("HP_BD_TITLE"));
				boardDTO.setHpBdContent(rset.getString("HP_BD_CONTENT"));
				boardDTO.setHpBdDrawupDate(rset.getDate("HP_BD_DRAWUP_DATE"));
				boardDTO.setHpBdWatched(rset.getInt("HP_BD_WATCHED"));
				
				boardDTO.getWriter().setNickname(rset.getString("MEM_NAME"));
				
				boardDTO.setHpBdFile(rset.getString("HP_BD_FILE"));
				boardDTO.setHpMemNo(rset.getInt("HP_MEM_NO"));
				boardDTO.setHpBdCategoryNo(rset.getString("HP_BD_CATEGORY_NO"));
				
				HPFAQList.add(boardDTO);
				
				if(i == 10) {
					
					break;
					
				}
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(stmt);
			
		}
		
		return HPFAQList;
		
	}

}
