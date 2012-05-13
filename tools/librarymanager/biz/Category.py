# -*- coding: utf-8 -*-

from dabo.dLocalize import _
from Base import Base


class Category(Base):

	def initProperties(self):
		super(Category, self).initProperties()
		self.Caption = "Category"
		self.DataSource = "category"
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
				("id", "I", True, "category", "id"),
				("partid", "I", False, "category", "partid"),
				("catid", "I", False, "category", "catid"),
				("comments", "C", False, "category", "comments"),
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
		super(Category, self).afterInit()


	def setBaseSQL(self):
		# Set up the base SQL (the fields clause, the from clause, etc.) The
		# UI refresh() will probably modify the where clause and maybe the
		# limit clause, depending on what the runtime user chooses in the
		# select page.
		self.addFrom("category")
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

class CategoriesForPart(Category):
	def initProperties(self):
		self.LinkField = "partid"
		self.super()
		self.DataStructure += (("name", "C", False, "categories", "name"), )

	def setBaseSQL(self):
		self.super()
		self.addJoin("categories", "categories.id = category.catid", "inner")

	def addLink(self, catid):
		if self.hasLink(catid): 
			raise ValueError, "catid %s is already linked to this part." % catid
		self.new()
		self.Record.catid = catid
		self.save()

	def delLink(self, catid):
		if not self.hasLink(catid):
			raise ValueError, "catid %s not found, so can't delete." % catid
		self.seek(catid, "catid")  ## not technically needed
		self.delete()
	
	def hasLink(self, catid):
		return self.seek(catid, "catid") >= 0	

class PartsForCategory(Category):
    def initProperties(self):
        self.LinkField = "catid"
        self.super()
        self.DataStructure += (("name", "C", False, "parts", "name"), )

    def setBaseSQL(self):
        self.super()
        self.addJoin("parts", "parts.id = category.partid", "inner")		