package dao;

import java.sql.*;
import java.util.List;

import domain.MemberBean;
import enums.MemberQuery;
import enums.Vendor;
import factory.*;
import pool.*;

public class MemberDAOImpl implements MemberDAO {
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {return instance;}
	private MemberDAOImpl() {}

	@Override
	public void insertMemberBean(MemberBean member) {
		try {
			DatabaseFactory.createDatabase(Vendor.ORACLE, DBConstant.USER_NAME, DBConstant.PASSWORD)
			.getConnection().createStatement().executeUpdate(String.format(MemberQuery.INSERT_MEMBER.toString(),member.getUserId(),member.getName(),member.getSsn(),member.getPassword()));
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
	}

	@Override
	public List<MemberBean> selectAllMember() {
		List<MemberBean> list = null;
		try {

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<MemberBean> selectByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberBean selectById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countMember() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateMember(MemberBean member) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMember(MemberBean member) {
		// TODO Auto-generated method stub

	}

	// <!-- "oracle.jdbc.driver.OracleDriver" -->
	// <!-- "jdbc:oracle:thin:@localhost:1521:xe" -->
	// <!-- "wldms" -->
	// <!-- "wldms0828" -->
	@Override
	public MemberBean login(MemberBean member) {
		MemberBean mem = null;
		try {

			System.out.println("멤버 파라미터" + member.getUserId());
			System.out.println("멤버 파라미터" + member.getPassword());
			ResultSet rs = DatabaseFactory
						   .createDatabase(Vendor.ORACLE
						   , DBConstant.USER_NAME
						   , DBConstant.PASSWORD)
						   .getConnection()
						   .createStatement()
						   .executeQuery(
							String.format(MemberQuery.LOGIN.toString()
						   , member.getUserId(), member.getPassword()));
			
			while (rs.next()) {
				mem = new MemberBean();
				mem.setUserId(rs.getString("MEM_ID"));
				mem.setTeamId(rs.getString("TEAM_ID"));
				mem.setPassword(rs.getString("PASSWORD"));
				mem.setName(rs.getString("NAME"));
				mem.setSsn(rs.getString("SSN"));
				// System.out.println("while loop 내부:"+mem.getUserId());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// System.out.println("login pre out ID :"+mem.getUserId());
		return mem;
	}

	@Override
	public MemberBean join(MemberBean member) {
		MemberBean mem2 = null;
		try {
			ResultSet rs = DatabaseFactory.createDatabase(Vendor.ORACLE, 
						   DBConstant.USER_NAME, 
						   DBConstant.PASSWORD)
						   .getConnection()
						   .createStatement()
						   .executeQuery(String.format(MemberQuery.JOIN.toString()
						   ,member.getUserId(), member.getPassword()
						   ,member.getSsn(), member.getName()));
			if (rs.next()) {
				mem2 = new MemberBean();
				mem2.setUserId(rs.getString("USERID"));
				mem2.setPassword(rs.getString("PASSWORD"));
				mem2.setSsn(rs.getString("SSN"));
				mem2.setName(rs.getString("NAME"));
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

		return mem2;
	}

}
