package player;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.ConnectionManager;

public class PlayerDAO {
	Connection conn;
	PreparedStatement pstmt;

	// 싱글톤
		static PlayerDAO instance;

		public static PlayerDAO getInstance() {
			if (instance == null)
				instance = new PlayerDAO();
			return instance;
		}
	public void update(PlayerVO playerVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "UPDATE player_stat SET player=?, team=?, goal=?, assist=?,"
					+ " offense_point=?, shooting=?, corner_kick=?, penalty_kick=?,"
					+ " free_kick=?, on_target_shot=?, game_number=? " 
					+ " WHERE player=?, team=?, goal=?, assist=?,"
					+ " offense_point=?, shooting=?, corner_kick=?, penalty_kick=?"
					+ " free_kick=?, on_target_shot=?, game_number=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, playerVO.getPlayer());
			pstmt.setString(2, playerVO.getTeam());
			pstmt.setInt(3, playerVO.getGoal());
			pstmt.setInt(4, playerVO.getAssist());
			pstmt.setInt(5, playerVO.getOffense_point());
			pstmt.setInt(6, playerVO.getShooting());
			pstmt.setInt(7, playerVO.getCorner_kick());
			pstmt.setInt(8, playerVO.getPenalty_kick());
			pstmt.setInt(9, playerVO.getFree_kick());
			pstmt.setInt(10, playerVO.getOn_target_shot());
			pstmt.setInt(11, playerVO.getGame_number());
			int r = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(null, pstmt, conn);
		}
	}

	public void insert(PlayerVO playerVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "INSERT INTO player_stat (PLAYER, TEAM, GOAL, ASSIST,"
						+ "OFFENSE_POINT, SHOOTING, CORNER_KICK, PENALTY_KICK"
						+ "FREE_KICK, ON_TARGET_SHOT, GAME_NUMBER"
						+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, playerVO.getPlayer());
			pstmt.setString(2, playerVO.getTeam());
			pstmt.setInt(3, playerVO.getGoal());
			pstmt.setInt(4, playerVO.getAssist());
			pstmt.setInt(5, playerVO.getOffense_point());
			pstmt.setInt(6, playerVO.getShooting());
			pstmt.setInt(7, playerVO.getCorner_kick());
			pstmt.setInt(8, playerVO.getPenalty_kick());
			pstmt.setInt(9, playerVO.getFree_kick());
			pstmt.setInt(10, playerVO.getOn_target_shot());
			pstmt.setInt(11, playerVO.getGame_number());
			int r = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
	}
	
	public ArrayList<PlayerVO> selectAll(PlayerVO playerVO) {
		ArrayList<PlayerVO> list = new ArrayList<>();
		PlayerVO listVO = null;
		ResultSet rs = null;
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "SELECT RANK() OVER(ORDER BY goal desc) as RANK, PLAYER, TEAM, GOAL, ASSIST,"
					+ " OFFENSE_POINT, SHOOTING, CORNER_KICK, PENALTY_KICK,"
					+ " FREE_KICK, ON_TARGET_SHOT, GAME_NUMBER "
					+ " FROM player_stat"
					+ " ORDER BY GOAL DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				listVO = new PlayerVO();
				listVO.setRank(rs.getInt(1));
				listVO.setPlayer(rs.getString(2));
				listVO.setTeam(rs.getString(3));
				listVO.setGoal(rs.getInt(4));
				listVO.setAssist(rs.getInt(5));
				listVO.setOffense_point(rs.getInt(6));
				listVO.setShooting(rs.getInt(7));
				listVO.setCorner_kick(rs.getInt(8));
				listVO.setPenalty_kick(rs.getInt(9));
				listVO.setFree_kick(rs.getInt(10));
				listVO.setOn_target_shot(rs.getInt(11));
				listVO.setGame_number(rs.getInt(12));
				list.add(listVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return list;
	}
}
