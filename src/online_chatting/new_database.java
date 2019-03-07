package online_chatting;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.LineNumberReader;
import java.sql.*;
import java.util.*;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class new_database {
	
	public static Connection c=null;
	static{
	    try {
	        Class.forName ("oracle.jdbc.OracleDriver");
	        c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sql123");
	        
	    } catch (Exception e) {
	        System.out.println(e.getMessage());
	    }
	}
	
	public static void status_update_online(String user)
	{
		PreparedStatement ps=null;
		
		try
		{
		String q="";
	 q="update chatting_info set status=? where id=?";
		ps=c.prepareStatement(q);
		ps.setString(1, "online");
		ps.setString(2, user);
	ps.executeQuery();
		
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception 42hhai");
				}
		
		
	}
	
	public static void yes_typing(String typer,String to)
	{
		PreparedStatement ps=null;
		try
		{String q="";
	 q="update chatting_info set typing=?, too=?  where id=?";
		ps=c.prepareStatement(q);
		ps.setString(1, "yes");
		ps.setString(2, to);
		ps.setString(3, typer);
	ps.executeQuery();}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception 61hhai");
				}	
	}
	
	public static void no_typing(String user)
	{
		PreparedStatement ps=null;
		
		try
		{
		String q="";
	 q="update chatting_info set typing=? where id=?";
		ps=c.prepareStatement(q);
		ps.setString(1, "no");
		ps.setString(2, user);
	ps.executeQuery();
		
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception81 hhai");
				}	
	}
	
	public static String done_typing(String b,String a)
	{
		ResultSet r=null;
		PreparedStatement ps=null;
		String h="";
		try
		{
		String q="";
	 q="select typing from chatting_info where id=? and too=?";
		ps=c.prepareStatement(q);
		
		ps.setString(1, b);
		ps.setString(2, a);
	r=ps.executeQuery();
		if(r.next())
		{
			h=r.getString("typing");
		}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception 106hhai");
				}	
		finally
		{
			try
			{
			r.close();
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
	return h;
	}
	
	
	public static void to_offline(String user)
	{
		
		PreparedStatement ps=null;
		try
		{
		
		String q="";
		System.out.println("sql");
	 q="update chatting_info set status=? where id=?";
	 System.out.println("1");
		ps=c.prepareStatement(q);
		ps.setString(1, "offline");
		System.out.println("1");
		ps.setString(2, user);
		System.out.println("1");
		ps.executeQuery();
		System.out.println("1");
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception 145hhai");
				}
		
		
	}
	
	public static void to_online(String user)
	{
		
		PreparedStatement ps=null;
		try
		{
	
		String q="";
		System.out.println("sql");
	 q="update chatting_info set status=? where id=?";
	 System.out.println("1");
		ps=c.prepareStatement(q);
		ps.setString(1, "online");
		System.out.println("1");
		ps.setString(2, user);
		System.out.println("1");
		ps.executeQuery();
		System.out.println("1");
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception 172hhhhhai");
				}
		
	}
	
	public static boolean check_online(String user)
	{
		String kk="";
		PreparedStatement ps=null;
		String online="online";
		ResultSet r=null;
		try
		{
		
		String q="";
		System.out.println("sql");
	 q="select status from chatting_info where id=?";
	 System.out.println("1");
		ps=c.prepareStatement(q);
		ps.setString(1, user);
		System.out.println("1");
		r=ps.executeQuery();
		System.out.println("1");
		if(r.next())
		{
			kk=r.getString("status");
		}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception 202hhai");
				}
		finally
		{
			try
			{
			r.close();
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		if(kk.equals(online))
		{
			return true;
		}
		else
		{
			return false;
		}
	
	}
	
	
	
	
	public static boolean already_id_presentwithpass(String idd,String passs)
	{
		ResultSet r=null;
		PreparedStatement ps=null;
		try
		{
		String q="";
		 q="select id from chatting_info where id=? and password=?";
		ps=c.prepareStatement(q);
		ps.setString(1, idd);
		ps.setString(2, passs);
		r=ps.executeQuery();
		if(r.next())
			return true;
		else
			return false;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception 250hhai");
			return true;
		}
		finally
		{
			try
			{
			r.close();
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		
	}
	
	public static String get_pass(String idd)
	{
		ResultSet r=null;
		String ff=null;
		PreparedStatement ps=null;
		String q="";
		
			q="select password from chatting_info where id=?";
		try
		{
		 ps=c.prepareStatement(q);
			ps.setString(1, idd);
			
			r=ps.executeQuery();
			if(r.next())
			{
				ff=r.getString("password");
			}
			else
			{
				
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		finally
		{
			try
			{
			r.close();
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		return ff;
	
	}
	
	
	public static boolean already_id_presentwithpet(String idd,String pett)
	{
		ResultSet r=null;
		PreparedStatement ps=null;
		try
		{
		
		String q="";
			q="select id from chatting_info where id=? and pet=?";
		ps=c.prepareStatement(q);
		ps.setString(1, idd);
		ps.setString(2, pett);
		r=ps.executeQuery();
		if(r.next())
			return true;
		else
			return false;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage()+" Exception 331hhai");
			return true;
		}
		finally
		{
			try
			{
			r.close();
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
	}
	
	
	public static void add_user_data(String name,String id,String pass,String pet,String status,String typing)
	{
		PreparedStatement ps=null;
		String q="";
		
	q="insert into chatting_info values(?,?,?,?,?,?,?)";
		try
		{
		ps=c.prepareStatement(q);
		ps.setString(1, name);
		ps.setString(2, id);
		ps.setString(3, pass);
		ps.setString(4, pet);
		ps.setString(5, status);
		ps.setString(6, typing);
		ps.setString(7, "0");
		ps.executeQuery();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println("Exception hai 1");
		}
		finally
		{
			try
			{
			
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		}
	
	public static void msg_store(String msg,String to,String typer)
	{
		PreparedStatement ps=null;
		String q="";
		
	q="insert into chats values(?,?,?,?)";
		try
		{
		ps=c.prepareStatement(q);
		ps.setString(1, typer);
		ps.setString(2, to);
		ps.setString(3, msg);
		ps.setString(4, "no");
		ps.executeQuery();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println("Exception hai 1");
		}
		finally
		{
			try
			{
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		}
	
	
	public static ResultSet get_msg(String typer,String to)
	{
		PreparedStatement ps=null;
		String q="";
	ResultSet r=null;
	q="select * from chats where from_=? and to_=? or from_=? and to_=?";
		try
		{
			ps=c.prepareStatement(q);
			ps.setString(1, typer);
			ps.setString(2, to);
			ps.setString(3, to);
			ps.setString(4, typer);	
			r=ps.executeQuery();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println("Exception hai 1");
		}
		
		
		return r;
		}
	

	public static ResultSet get_all_username(String id)
	{
		PreparedStatement ps=null;
		String q="";
		String name="";
		ResultSet r=null;
		System.out.println("check "+id);
	q="select * from chatting_info where id!=? ";
		try
		{
		ps=c.prepareStatement(q);
		ps.setString(1, id);
		r=ps.executeQuery();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println("Exception hai 1");
		}
		
		return r;
		}
	
	
	public static String get_name(String id)
	{
		PreparedStatement ps=null;
		String q="";
		String name="";
		ResultSet r=null;
	q="select * from chatting_info where id=? ";
		try
		{
		ps=c.prepareStatement(q);
		ps.setString(1, id);
		
		r=ps.executeQuery();
		if(r.next())
			name=r.getString("name");
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println("Exception hai 1");
		}
		finally
		{
			try
			{
			r.close();
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		return name;
		}
	
	public static boolean already_id_present(String idd)
	{
		ResultSet r=null;
		PreparedStatement ps=null;
		try
		{
		String q="";
		
			q="select id from chatting_info where id=?";
		ps=c.prepareStatement(q);
		ps.setString(1, idd);
		r=ps.executeQuery();
		if(r.next())
			return true;
		else
			return false;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println("Exception hai");
			
		}
		finally
		{
			try
			{
			r.close();
			ps.close();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		
		return false;
	}
	
	
	public static void main(String args[])
	{
		System.out.println("connected");
	}
	
}
