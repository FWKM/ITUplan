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

class InitScreen {
	
	def render(html : NodeSeq) : NodeSeq = {
		val b = true
		if(b) <lift:embed what="login" />
		else <lift:embed what="bookings_screen" />
	}
}