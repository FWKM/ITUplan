package code.snippet

import _root_.net.liftweb._
import http._
import _root_.net.liftweb.util._
import _root_.net.liftweb.common._
import _root_.scala.xml._
import _root_.net.liftweb.util.BindHelpers._
import _root_.net.liftweb.http.SHtml._
import _root_.net.liftweb.http.js.JsCmds._
import _root_.net.liftweb.http.js.JE._
import _root_.net.liftweb.http._
import java.sql.{Connection, DriverManager, ResultSet};
import java.util._


case class Room(rid:String , capacity:Int , active:Boolean , use_in_planning:Boolean ){}
case class Booking(rid:String , uid:Int , date:String , from:String , dur:Int){}
case class Planning(cid:String, rid:String , day:String, from_date:String , duration_weeks:Int, from_time:String , duration_time:Int, track_id:String){}

class CalOverrider extends Calendar{override def toString(){"hej"}
}
object RoomFinding
{
	val conn_str = "jdbc:mysql://localhost:3306/DBNAME?user=DBUSER&password=DBPWD"
	var bookings = List(Booking)
	var rooms = List(Room)
	var plannings = List(Planning)
	
	def intToBool(x:Int) = (x==1)
	def boolToInt(x:Boolean) = {if(x) 1 else 0}
	
	def find =
	{
		var found = false
		var counter = 0
		
		
		
		do {
			if(rooms.lengthCompare(counter) >= 0){
				
			}
			counter += 1
		} while(!found)
	}
	
	def getRooms =
	{
		// -- Database connection stuff -- //
		// Load the driver
		Class.forName("oracle.jdbc.driver.OracleDriver")
		// Setup the connection
		val conn = DriverManager.getConnection(conn_str)
		try {
			val statement = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY)
			val rs = statement.executeQuery("SELECT * FROM room ORDER BY capacity")
			while (rs.next) {
				rooms :+ Room(rs.getString("rid"), rs.getInt("capacity"), intToBool(rs.getInt("active")), intToBool(rs.getInt("use_in_planning")))
			}
		}
		finally
		{
			conn.close
		}
		// -- Database connection stuff ends-- //
	}
	
	def getBookings =
	{
		val cal = Calendar.getInstance
		val today = cal.YEAR+"/"+cal.MONTH+"/"+cal.DAY_OF_MONTH
		// -- Database connection stuff -- //
		// Load the driver
		Class.forName("oracle.jdbc.driver.OracleDriver")
		// Setup the connection
		val conn = DriverManager.getConnection(conn_str)
		try {
			val statement = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY)
			val rs = statement.executeQuery("SELECT * FROM booking WHERE date = "+today)
			while (rs.next) {
				bookings :+ Booking(rs.getString("rid"), rs.getInt("uid"), rs.getString("date"), rs.getString("from"), rs.getInt("duration"))				
			}
		}
		finally {
			conn.close
		}
		// -- Database connection stuff ends-- //
	}
	
	def getPlanning =
	{
		val cal = Calendar.getInstance
		val today = cal.YEAR+"/"+cal.MONTH+"/"+cal.DAY_OF_MONTH
		// -- Database connection stuff -- //
		// Load the driver
		Class.forName("oracle.jdbc.driver.OracleDriver")
		// Setup the connection
		val conn = DriverManager.getConnection(conn_str)
		try {
			val statement = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY)
			val rs = statement.executeQuery("SELECT * FROM planning_1")
			while (rs.next) {
				plannings :+ Planning(	rs.getString("cid"),
										rs.getString("rid"),
										rs.getString("day"),
										rs.getString("from_date"),
										rs.getInt("duration_weeks"),
										rs.getString("from_time"),
										rs.getInt("duration_time"),
										rs.getString("track_id"))				
			}
		}
		finally {
			conn.close
		}
		// -- Database connection stuff ends-- //
	}
	
	
	
}