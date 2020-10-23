package player;

public class PlayerVO {
	
	private int rank;
	private String player;
	private String team;
	private int goal;
	private int assist;
	private int offense_point;
	private int shooting;
	private int corner_kick;
	private int penalty_kick;
	private int free_kick;
	private int on_target_shot;
	private int game_number;
	
	public PlayerVO() {
		
	}
	
	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getPlayer() {
		return player;
	}
	public void setPlayer(String player) {
		this.player = player;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public int getGoal() {
		return goal;
	}
	public void setGoal(int goal) {
		this.goal = goal;
	}
	public int getAssist() {
		return assist;
	}
	public void setAssist(int assist) {
		this.assist = assist;
	}
	public int getOffense_point() {
		return offense_point;
	}
	public void setOffense_point(int offense_point) {
		this.offense_point = offense_point;
	}
	public int getShooting() {
		return shooting;
	}
	public void setShooting(int shooting) {
		this.shooting = shooting;
	}
	public int getCorner_kick() {
		return corner_kick;
	}
	public void setCorner_kick(int corner_kick) {
		this.corner_kick = corner_kick;
	}
	public int getPenalty_kick() {
		return penalty_kick;
	}
	public void setPenalty_kick(int penalty_kick) {
		this.penalty_kick = penalty_kick;
	}
	public int getFree_kick() {
		return free_kick;
	}
	public void setFree_kick(int free_kick) {
		this.free_kick = free_kick;
	}
	public int getOn_target_shot() {
		return on_target_shot;
	}
	public void setOn_target_shot(int on_target_shot) {
		this.on_target_shot = on_target_shot;
	}
	public int getGame_number() {
		return game_number;
	}
	public void setGame_number(int game_number) {
		this.game_number = game_number;
	}
	public PlayerVO( String player, String team, int goal, int assist, int offense_point, int shooting,
			int corner_kick, int penalty_kick, int free_kick, int on_target_shot, int game_number) {
		super();

		this.player = player;
		this.team = team;
		this.goal = goal;
		this.assist = assist;
		this.offense_point = offense_point;
		this.shooting = shooting;
		this.corner_kick = corner_kick;
		this.penalty_kick = penalty_kick;
		this.free_kick = free_kick;
		this.on_target_shot = on_target_shot;
		this.game_number = game_number;
	}
	
	@Override
	public String toString() {
		return "playerVO [player=" + player + ", team=" + team + ", goal=" + goal + ", assist="
				+ assist + ", offense_point=" + offense_point + ", shooting=" + shooting + ", corner_kick="
				+ corner_kick + ", penalty_kick=" + penalty_kick + ", free_kick=" + free_kick + ", on_target_shot="
				+ on_target_shot + ", game_number=" + game_number + "]";
	}
}
