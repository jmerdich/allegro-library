# -*- coding: utf-8 -*-

from dabo.dLocalize import _
from Base import Base


class Symbol(Base):

	def initProperties(self):
		super(Symbol, self).initProperties()
		self.Caption = "Symbol"
		self.DataSource = "symbol"
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
				("id", "I", True, "symbol", "id"),
				("library", "I", False, "symbol", "library"),
				("name", "C", False, "symbol", "name"),
				("comments", "C", False, "symbol", "comments"),
		)

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
		super(Symbol, self).afterInit()


	def setBaseSQL(self):
		# Set up the base SQL (the fields clause, the from clause, etc.) The
		# UI refresh() will probably modify the where clause and maybe the
		# limit clause, depending on what the runtime user chooses in the
		# select page.
		self.addFrom("symbol")
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
