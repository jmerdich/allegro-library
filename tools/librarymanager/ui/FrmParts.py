# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdParts import GrdParts
from PagSelectParts import PagSelectParts
from PagEditParts import PagEditParts
import wx


class FrmParts(FrmBase):

	def initProperties(self):
		super(FrmParts, self).initProperties()
		self.NameBase = "frmParts"
		self.Caption = "Parts"
		self.SelectPageClass = PagSelectParts
		self.BrowseGridClass = GrdParts
		self.EditPageClass = PagEditParts


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizParts = app.biz.Parts(app.dbConnection)
			self.addBizobj(bizParts)
			self.addBizobj(app.biz.Categories(app.dbConnection))
			self.requeryCategories()
			self.addBizobj(app.biz.Footprints(app.dbConnection))
			self.requeryFootprints()
			self.addBizobj(app.biz.Libraries(app.dbConnection))
			self.requeryLibraries()
			self.addBizobj(app.biz.Symbol(app.dbConnection))
			self.requerySymbol()
		super(FrmParts, self).afterInit()
		
	def requeryCategories(self):
		biz = self.getBizobj("categories")
		biz.UserSQL = "select * from categories order by name"
		biz.requery()

	def requeryFootprints(self):
		biz = self.getBizobj("footprints")
		biz.UserSQL = "select * from footprints order by name"
		biz.requery()
		
	def requeryLibraries(self):
		biz = self.getBizobj("libraries")
		biz.UserSQL = "select * from libraries order by name"
		biz.requery()	
	
	def requerySymbol(self):
		biz = self.getBizobj("symbol")
		biz.UserSQL = "select * from symbol order by name"
		biz.requery()	
		
	def getFootprintChoicesAndKeys(self):
		#Return two lists, one for all name values and one for all id values.
		choices, keys = [], []
		biz = self.getBizobj("footprints")
		for rownum in biz.bizIterator():
			choices.append(biz.Record.name)
			keys.append(biz.Record.id)
		return (choices, keys)
		
	def getLibraryChoicesAndKeys(self):
		#Return two lists, one for all name values and one for all id values.
		choices, keys = [], []
		biz = self.getBizobj("libraries")
		for rownum in biz.bizIterator():
			choices.append(biz.Record.name)
			keys.append(biz.Record.id)
		return (choices, keys)	

	def getSymbolChoicesAndKeys(self, key=""):
		#Return two lists, one for all name values and one for all id values.
		choices, keys = [], []
		biz = self.getBizobj("symbol")
		for rownum in biz.bizIterator():
			if (key == "" or key == biz.Record.library):
				choices.append(biz.Record.name)
				keys.append(biz.Record.id)
		return (choices, keys)	
		
	def getCategoryChoicesAndKeys(self):
		#Return two lists, one for all name values and one for all id values.
		choices, keys = [], []
		biz = self.getBizobj("categories")
		for rownum in biz.bizIterator():
			choices.append(biz.Record.name)
			keys.append(biz.Record.id)
		return (choices, keys)

	def addCategory(self, catid):
		self.getBizobj().bizCategory.addLink(catid)
	def addFootprint(self, footprintid, symbolid, verified, comments):
		try:
			self.getBizobj().bizPart.addLink(footprintid, symbolid, verified, comments)
		except ValueError as e:
			dabo.ui.exclaim(str(e))
	def delFootprint(self, id):
		self.getBizobj().bizPart.delLink(id)	
	def getFootprint(self, id):
		return self.getBizobj().bizPart.getLink(id)	
	def delCategory(self, catid):
		self.getBizobj().bizCategory.delLink(catid)	

if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmParts(Caption="Test Of FrmParts", Testing=True)
	frm.show()
	app.start()
