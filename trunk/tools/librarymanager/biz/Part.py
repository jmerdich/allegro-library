# -*- coding: utf-8 -*-

from dabo.dLocalize import _
from Base import Base


class Part(Base):

	def initProperties(self):
		super(Part, self).initProperties()
		self.Caption = "Part"
		self.DataSource = "part"
		self.KeyField = "id"

		# dict in the form of
		# {'colname': [_('caption for colname'),
		#              _('tooltip for colname'),
		#              _('helptext> for colname')]}

		self.ColTextsDict = {}

		# Setting the DataStructure explicitly here is optional, but recommended as
		# it will keep Dabo from interpreting field types from the backend every
		# time. It lets you specify what types you expect which fields to be. Also,
		# this information is used in self.setSQL() to add the fields to the query.
		# (field_alias, field_type, pk, table_name, field_name, field_scale)
		self.DataStructure = (
			("id", "I", True, "part", "id"),
			("partid", "I", False, "part", "partid"),
			("footprintid", "I", False, "part", "footprintid"),
			("symbolid", "I", False, "part", "symbolid"),
			("verificationstatus", "I", False, "part", "verificationstatus"),
			("comments", "C", False, "part", "comments"),
		)

		self.FillLinkFromParent = True
		
		# Use the DefaultValues dict to specify default field values for new
		# records. By default DefaultValues is the empty dict, meaning that
		# no default values will be filled in.
		#self.DefaultValues['<field_name>'] = <value_or_function_object>

		# Default encoding is set to utf8, but if your backend db encodes in
		# something else, you need to set that encoding here (or in each
		# bizobj individually. A very common encoding for the Americas and
		# Western Europe is "latin-1", so if you are getting errors but are
		# unsure what encoding to pick, try uncommenting the following line:
		#self.Encoding = "latin-1"


	def afterInit(self):
		super(Part, self).afterInit()


	def setBaseSQL(self):
		# Set up the base SQL (the fields clause, the from clause, etc.) The
		# UI refresh() will probably modify the where clause and maybe the
		# limit clause, depending on what the runtime user chooses in the
		# select page.
		self.addFrom("part")
		self.setLimitClause("500")
		self.addFieldsFromDataStructure()

	def getColCaption(self, column):
		# if self.ColTextsDict is defined get the text from there, otherwise
		# just return the column name
		if self.ColTextsDict.has_key(column):
			return self.ColTextsDict[column][0]
		else:
			return column

	def getColToolTip(self, column):
		# if self.ColTextsDict is defined get the text from there, otherwise
		# just return the column name
		if self.ColTextsDict.has_key(column):
			return self.ColTextsDict[column][1]
		else:
			return column

	def getColHelpText(self, column):
		# if self.ColTextsDict is defined get the text from there, otherwise
		# just return the column name
		if self.ColTextsDict.has_key(column):
			return self.ColTextsDict[column][2]
		else:
			return column

			
class FootprintForPart(Part):
	def initProperties(self):
		self.LinkField = "partid"
		self.super()
		self.DataStructure += (("footprintname", "C", False, "footprints", "name"), ("symbolname", "C", False, "symbol", "name"), ("libraryname", "C", False, "libraries", "name"))
	
	def setBaseSQL(self):
		self.super()
		self.addJoin("footprints", "footprints.id = part.footprintid", "inner")	
		self.addJoin("symbol", "symbol.id = part.symbolid", "inner")	
		self.addJoin("libraries", "libraries.id = symbol.library", "inner")	
		
	def addLink(self, footprintid, symbolid, verified, comments):
		if self.hasLink(footprintid): 
			raise ValueError, "footprint %s is already linked to this part." % footprintid
		if symbolid is None:
			symbolid = 1 #Dummy Symbol
		self.new()
		self.Record.footprintid = footprintid
		self.Record.symbolid = symbolid
		self.Record.verificationstatus = verified
		self.Record.comments = comments
		self.save()
	def delLink(self, id):
		pos = self.seek(id, "id")
		if pos >= 0:
			self.delete()
			#self.requery()
		else:
			raise ValueError, "id %s not found, so can't delete." % id
	def hasLink(self, footprintid):
		return self.seek(footprintid, "footprintid") >= 0
	def getLink(self, id):
		self.seek(id, "id")
		footprint = self.Record.footprintname
		library = self.Record.libraryname
		symbol = self.Record.symbolname
		comments = self.Record.comments
		return (footprint, library, symbol, comments)
		
		