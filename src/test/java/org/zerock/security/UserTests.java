package org.zerock.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.EmployeeVO;
import org.zerock.mapper.EmployeeMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
	"file:src/main/webapp/WEB-INF/spring/root-context.xml"
	})
@Log4j
public class UserTests {

//	@Autowired
//	private PasswordEncoder encoder;
//
//	@Autowired
//	private DataSource ds;
	
	@Autowired
	private EmployeeMapper mapper;

	/*
	 * @Test public void empInsertTest() {
	 * 
	 * String sql =
	 * "insert into emp(emp_no, empid, empname, emppass) values (?, ?, ?, ?)";
	 * 
	 * Connection conn = null; PreparedStatement pstmt = null;
	 * 
	 * try { conn = ds.getConnection(); pstmt = conn.prepareStatement(sql);
	 * 
	 * pstmt.setString(1, "1"); pstmt.setString(2, "asd123"); pstmt.setString(3,
	 * "임희진"); pstmt.setString(4, encoder.encode("asd123"));
	 * 
	 * pstmt.executeUpdate(); } catch (Exception e) { e.printStackTrace(); } finally
	 * { if (pstmt != null) { try { pstmt.close(); } catch (Exception e2) {
	 * 
	 * } }
	 * 
	 * if(conn != null) { try { conn.close(); } catch (Exception e2) { // TODO:
	 * handle exception } } }
	 * 
	 * }
	 */
	
	/*
	 * @Test public void authInsertTest() {
	 * 
	 * String sql = "insert into emp_auth(emp_no, auth) values (?, ?)";
	 * 
	 * Connection conn = null; PreparedStatement pstmt = null;
	 * 
	 * try { conn = ds.getConnection(); pstmt = conn.prepareStatement(sql);
	 * 
	 * pstmt.setString(1, "1"); pstmt.setString(2, "ROLE_USER");
	 * 
	 * pstmt.executeUpdate(); } catch (Exception e) { e.printStackTrace(); } finally
	 * { if (pstmt != null) { try { pstmt.close(); } catch (Exception e2) {
	 * 
	 * } }
	 * 
	 * if(conn != null) { try { conn.close(); } catch (Exception e2) { // TODO:
	 * handle exception } } }
	 * 
	 * }
	 */
	
	@Test
	public void testRead() {
		EmployeeVO emp = mapper.read("asd123");
		log.info(emp);
		log.info(emp.getAuth().getAuth());
	}

}
