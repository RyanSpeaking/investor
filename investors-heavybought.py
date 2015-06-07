import urllib.request
import xml.etree.ElementTree as ET
import time
import re
from html.parser import HTMLParser



def handledata(content):
	print(content)

class MyHTMLParser(HTMLParser):
	found = 0
	wellformedhtml = ""
	scriptstart=0
	startpaircount=0
	openpair=0
	stoptoprint=0
	startprint=0
	def handle_starttag(self, tag, attrs):
		if self.stoptoprint==1:
			return
		if self.startpaircount==1:
			self.openpair=self.openpair + 1

		print("start tag:",tag, "attrs:", attrs)

		for att in attrs:
			for at in att:
				if at == "SOTMUPHTML":

					self.found = 1
					self.startpaircount = 1
					self.openpair=self.openpair + 1
					print("    found="+str(self.found)+", openpair="+str(self.openpair))
					self.wellformedhtml = self.wellformedhtml + "<div id=\"SOTMUPHTML\">"
					return
				elif "stock-checkup" in at and "window.open" in at:
					print("stock-checkup: " + at)
					tmparray = at.split("'")
					print("stock-checkup url: " + tmparray[1])
					url = "http://www.investors.com" + tmparray[1]
					response = urllib.request.urlopen(url)
					checkuphtml = response.read()
					searchObj = re.search( r'(.*) Composite Rating (.*?) .*', checkuphtml.decode("utf-8"), re.M|re.I)
					print("composite rating:" + searchObj.group())
					searchObj2 = re.search( r'>[0-9][0-9]<', searchObj.group(), re.M|re.I)
					rating = searchObj2.group()[1:3]
					print("rating:" + rating)
					self.wellformedhtml = self.wellformedhtml + "Rating:" + rating
					if int(rating) > 95:
						self.wellformedhtml = self.wellformedhtml + " worth investing"


		print("    found="+str(self.found)+", openpair="+str(self.openpair))

		if tag == "script":
			self.scriptstart = 1
		elif self.found==1:
			self.wellformedhtml = self.wellformedhtml + "<" + tag + ">"
	def handle_endtag(self, tag):
		if self.stoptoprint==1:
			return
		print("end tag:", tag)
		if self.openpair>0:
			self.openpair = self.openpair - 1
			if self.openpair == 0:
				self.stoptoprint=1

		print("    found="+str(self.found)+", openpair="+str(self.openpair))



		if tag == "script":
			self.scriptstart=0
		elif self.found == 1:
			self.wellformedhtml = self.wellformedhtml + "</" + tag + ">"
	def handle_data(self, data):
		if self.stoptoprint==1:
			return
		print("data:"+data)
		print("    found="+str(self.found))
		if self.found==1:
			print("    openpair="+str(self.openpair))
			if self.openpair != 0:
				print("    append data")
				self.wellformedhtml = self.wellformedhtml + data
			else:
				self.found=0

parser = MyHTMLParser()

# fetch investors.com heavy buy data
# url = ""
# response = urllib.request.urlopen(url)
# html = response.read()
#print(html.decode("utf-8"))

#hard code raw data test
f=open('investors.html','r+b')
html=f.read()
parser.feed(html.decode("utf-8"))

# Go parsing
print("wellformedhtml:")
print("<html>"+parser.wellformedhtml+"</html>")

fileid=time.strftime("%Y%m%d%H%M%S")
filename="stock"+fileid+".html"

fo=open(filename,'w')
fo.write("<html>"+parser.wellformedhtml+"</html>")
fo.close()
