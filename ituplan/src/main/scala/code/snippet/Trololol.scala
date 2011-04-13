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

object A {
	
	def render(html : NodeSeq) : NodeSeq = {
		def b = true
		if(!b) <lift:embed what="login" />
		else <lift:embed what="login_session" />
	}
	
	
	def genForm(html : NodeSeq) = {
		
		object x extends RequestVar("")
		
		val file = new java.io.File("/Users/frederik/Desktop/whatup.txt")
		file.createNewFile
 		val writer = new java.io.BufferedWriter(new java.io.FileWriter(file,true))
		
		
		def formCallBack = {
			writer.write("VAR: ") 
			writer.write(x.is)
			writer.close
		}
		
		def method(str : String) = {
			// x = str
			SetHtml("mor", Text("var: %s" format x))
			// Noop <- Does nothing!
		}
		
		bind("A", html, 
			"input" -> text("",x(_)),
			"submit" -> submit("KNAP", formCallBack _))
	}
}