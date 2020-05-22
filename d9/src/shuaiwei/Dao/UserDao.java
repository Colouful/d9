package shuaiwei.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import shuaiwei.DB.DBUtil;
import shuaiwei.model.User;

public class UserDao {
	//增加账单
	public static void addUser(User user) throws SQLException {
			Connection conn=DBUtil.getConnection();
			String sql="insert into users (shouyintime,carid,username,mobile,itemname,price,zhifutype) "+
						" values(CURRENT_TIMESTAMP(),?,?,?,?,?,?)";
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, user.getCarid());
			ptmt.setString(2, user.getUsername());
			ptmt.setString(3, user.getMobile());
			ptmt.setString(4, user.getItemname());
			ptmt.setInt(5, user.getPrice());
			ptmt.setString(6,user.getZhifutype());
			ptmt.execute();
			System.out.println("增加账单成功");
	}
	//查询所有账单
	//查询所有账单列表
			public  static List<User> queryZhangdanlists() throws SQLException{
				Connection conn=DBUtil.getConnection();
				String sql="select * from users";
				PreparedStatement ptmt=conn.prepareStatement(sql);
				List<User> list=new ArrayList<User>();
				User userList=null;
				ResultSet rs=ptmt.executeQuery();
				while (rs.next()) {
					userList=new User();
					userList.setShouyintime(rs.getString("shouyintime"));
					userList.setOrderid(rs.getInt("orderid"));
					userList.setCarid(rs.getString("carid"));
					userList.setUsername(rs.getString("username"));
					userList.setMobile(rs.getString("mobile"));
					userList.setItemname(rs.getString("itemname"));
					userList.setPrice(rs.getInt("price"));
					userList.setZhifutype(rs.getString("zhifutype"));
					list.add(userList);
				}
				System.out.println("查询所有账单成功");
				return list;
			}
			/**
			 * 查询当日账单
			 */
			//按时间查询账单列表
			public static List<User> queryZhangdanlistsByTime(String time) throws SQLException{
				Connection conn=DBUtil.getConnection();
				String sql="select * from users where shouyintime like '%"+time+"%'";
				PreparedStatement ptmt=conn.prepareStatement(sql);
				List<User> list=new ArrayList<User>();
				User userList=null;
				ResultSet rs=ptmt.executeQuery();
				while (rs.next()) {
					userList=new User();
					userList.setShouyintime(rs.getString("shouyintime"));
					userList.setOrderid(rs.getInt("orderid"));
					userList.setCarid(rs.getString("carid"));
					userList.setUsername(rs.getString("username"));
					userList.setMobile(rs.getString("mobile"));
					userList.setItemname(rs.getString("itemname"));
					userList.setPrice(rs.getInt("price"));
					userList.setZhifutype(rs.getString("zhifutype"));
					list.add(userList);
				}
				System.out.println("按时间查询账单成功");
				return list;
			}
			/**
			 * 按其他信息查询账单列表
			 */
			public static List<User> queryZhangdanlistsByOther(String others) throws SQLException{
				Connection conn=DBUtil.getConnection();
				String sql="select * from users where shouyintime like '%"+others+"%' or carid like '%"+others+"%' or username like '%"+others+"%' "+
				              " or mobile like '%"+others+"%' or itemname like '%"+others+"%' or zhifutype like '%"+others+"%'";
				PreparedStatement ptmt=conn.prepareStatement(sql);
				List<User> list=new ArrayList<User>();
				User userList=null;
				ResultSet rs=ptmt.executeQuery();
				while (rs.next()) {
					userList=new User();
					userList.setShouyintime(rs.getString("shouyintime"));
					userList.setOrderid(rs.getInt("orderid"));
					userList.setCarid(rs.getString("carid"));
					userList.setUsername(rs.getString("username"));
					userList.setMobile(rs.getString("mobile"));
					userList.setItemname(rs.getString("itemname"));
					userList.setPrice(rs.getInt("price"));
					userList.setZhifutype(rs.getString("zhifutype"));
					list.add(userList);
				}
				System.out.println("按其他查询账单成功");
				return list;
			}
			//查询今天的收款金额,支付方式为现金
			public static double queryAcountEverydayAndXianjin(String timeString) throws SQLException{
						Connection conn=DBUtil.getConnection();
						String sql="select SUM(price) as zhonge from users where shouyintime like '%"+timeString+"%' and zhifutype='现金'";
						PreparedStatement ptmt=conn.prepareStatement(sql);
						ResultSet rs=ptmt.executeQuery();
						while (rs.next()) {
							return rs.getDouble(1);
						}
						return 0;
					}	
			public static double queryAcountEverydayAndXianjin() throws SQLException{
				Connection conn=DBUtil.getConnection();
				String sql="select SUM(price) as zhonge from users where  zhifutype='现金'";
				PreparedStatement ptmt=conn.prepareStatement(sql);
				ResultSet rs=ptmt.executeQuery();
				while (rs.next()) {
					return rs.getDouble(1);
				}
				return 0;
			}	
			
			public static double queryAcountEverydayAndXianjinOther(String others) throws SQLException{
						Connection conn=DBUtil.getConnection();
						String sql="select SUM(price) as zhonge from users where  carid like '%"+others+"%' or username like '%"+others+"%'  or mobile like '%"+others+"%' or itemname like '%"+others+"%' or zhifutype like '%"+others+"%'  and zhifutype='现金'";
						PreparedStatement ptmt=conn.prepareStatement(sql);
						ResultSet rs=ptmt.executeQuery();
						while (rs.next()) {
							return rs.getDouble(1);
						}
						return 0;
					}	
			//查询今天的收款金额,支付方式为转账
			public static double queryAcountEverydayAndZhuanZhang(String timeString) throws SQLException{
						Connection conn=DBUtil.getConnection();
						String sql="select SUM(price) as zhonge from users where shouyintime like '%"+timeString+"%' and zhifutype='转账'";
						PreparedStatement ptmt=conn.prepareStatement(sql);
						ResultSet rs=ptmt.executeQuery();
						while (rs.next()) {
							return rs.getDouble(1);
						}
						return 0;
					}
			public static double queryAcountEverydayAndZhuanzhangOther(String others) throws SQLException{
				Connection conn=DBUtil.getConnection();
				String sql="select SUM(price) as zhonge from users where shouyintime like '%"+others+"%' or  carid like '%"+others+"%' or username like '%"+others+"%'  or mobile like '%"+others+"%' or itemname like '%"+others+"%' or zhifutype like '%"+others+"%'  and zhifutype='转账'";
				PreparedStatement ptmt=conn.prepareStatement(sql);
				ResultSet rs=ptmt.executeQuery();
				while (rs.next()) {
					return rs.getDouble(1);
				}
				return 0;
			}	
			//查询今天的收款金额,支付方式为转账
			public static double queryAcountEverydayAndZhuanZhang() throws SQLException{
						Connection conn=DBUtil.getConnection();
						String sql="select SUM(price) as zhonge from users where  zhifutype='转账'";
						PreparedStatement ptmt=conn.prepareStatement(sql);
						ResultSet rs=ptmt.executeQuery();
						while (rs.next()) {
							return rs.getDouble(1);
						}
						return 0;
					}
			//查询今天的收款金额,支付方式为挂账
			public static double queryAcountEverydayAndGuaZhang(String timeString) throws SQLException{
						Connection conn=DBUtil.getConnection();
						String sql="select SUM(price) as zhonge from users where shouyintime like '%"+timeString+"%' and zhifutype='挂账'";
						PreparedStatement ptmt=conn.prepareStatement(sql);
						ResultSet rs=ptmt.executeQuery();
						while (rs.next()) {
							return rs.getDouble(1);
						}
						return 0;
					}
			public static double queryAcountEverydayAndGuazhangOther(String others) throws SQLException{
				Connection conn=DBUtil.getConnection();
				String sql="select SUM(price) as zhonge from users where shouyintime like '%"+others+"%' or carid like '%"+others+"%' or username like '%"+others+"%'  or mobile like '%"+others+"%' or itemname like '%"+others+"%' or zhifutype like '%"+others+"%' and  zhifutype='挂账'";
				PreparedStatement ptmt=conn.prepareStatement(sql);
				ResultSet rs=ptmt.executeQuery();
				while (rs.next()) {
					return rs.getDouble(1);
				}
				return 0;
			}	
			//查询今天的收款金额,支付方式为挂账
			public static double queryAcountEverydayAndGuaZhang() throws SQLException{
						Connection conn=DBUtil.getConnection();
						String sql="select SUM(price) as zhonge from users where zhifutype='挂账'";
						PreparedStatement ptmt=conn.prepareStatement(sql);
						ResultSet rs=ptmt.executeQuery();
						while (rs.next()) {
							return rs.getDouble(1);
						}
						return 0;
					}
			//查询今天的收款总金额
			public static double queryAcountEverydayAndAll(String timeString) throws SQLException{
						Connection conn=DBUtil.getConnection();
						String sql="select SUM(price) as zhonge from users where shouyintime like '%"+timeString+"%'";
						PreparedStatement ptmt=conn.prepareStatement(sql);
						ResultSet rs=ptmt.executeQuery();
						while (rs.next()) {
							return rs.getDouble(1);
						}
						return 0;
					}
			public static double queryAcountEverydayAndAllOther(String others) throws SQLException{
				Connection conn=DBUtil.getConnection();
				String sql="select SUM(price) as zhonge from users where shouyintime like '%"+others+"%' or carid like '%"+others+"%' or username like '%"+others+"%'  or mobile like '%"+others+"%' or itemname like '%"+others+"%' or zhifutype like '%"+others+"%'  ";
				PreparedStatement ptmt=conn.prepareStatement(sql);
				ResultSet rs=ptmt.executeQuery();
				while (rs.next()) {
					return rs.getDouble(1);
				}
				return 0;
			}	
			public static double queryAcountEverydayAndAll() throws SQLException{
				Connection conn=DBUtil.getConnection();
				String sql="select SUM(price) as zhonge from users";
				PreparedStatement ptmt=conn.prepareStatement(sql);
				ResultSet rs=ptmt.executeQuery();
				while (rs.next()) {
					return rs.getDouble(1);
				}
				return 0;
			}
	
}
