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
import code.snippet.ITUPROPS

class LoginScreen {
	def render(html : NodeSeq) : NodeSeq = {
		
		// Only for test
		var user = ""
		var pass = ""
		
		def validate = {
			if(user.equals("a") && pass.equals("b")){
				print("lolo")
			}
		}
		
		bind("element", html, 
			"usr" -> text("Username", user =_ ),
			"pwd" -> password("Password", pass =_),
			"submit" -> submit("Login", validate _))
			
	}
}