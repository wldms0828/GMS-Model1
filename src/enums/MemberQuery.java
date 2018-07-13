package enums;

public enum MemberQuery {
	LOGIN, INSERT_MEMBER, JOIN;
	@Override
	public String toString() {
		String query = "";
		switch (this) {
		case LOGIN:
			query = " SELECT MEM_ID  " + ", TEAM_ID   " + ", NAME  " + ", SSN  " + ", PASSWORD   " + "FROM MEMBER "
					+ " WHERE MEM_ID LIKE '%s' " + " AND PASSWORD LIKE '%s' ";
			break;
		case INSERT_MEMBER:
			query = "INSERT INTO MEMBER( MEM_ID, NAME , SSN,  PASSWORD) VALUES ('%s','%s','%s','%s')";
			break;
		case JOIN:
			query = "SELECT MEM_ID USERID," + " NAME " + ",SSN " + ",PASSWORD " + "FROM MEMBER "
					+ "WHERE MEM_ID LIKE '%s'" + " AND PASSWORD LIKE '%s' " + "AND SSN LIKE '%s' "
					+ "AND NAME LIKE '%s'";
			break;
		}

		return query;
	}
}
