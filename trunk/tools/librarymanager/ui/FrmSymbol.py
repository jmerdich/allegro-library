# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdSymbol import GrdSymbol
from PagSelectSymbol import PagSelectSymbol
from PagEditSymbol import PagEditSymbol


class FrmSymbol(FrmBase):

	def initProperties(self):
		super(FrmSymbol, self).initProperties()
		self.NameBase = "frmSymbol"
		self.Caption = "Symbols"
		self.SelectPageClass = PagSelectSymbol
		self.BrowseGridClass = GrdSymbol
		self.EditPageClass = PagEditSymbol


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizSymbol = app.biz.Symbol(app.dbConnection)
			self.addBizobj(bizSymbol)
		super(FrmSymbol, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmSymbol(Caption="Test Of FrmSymbol", Testing=True)
	frm.show()
	app.start()
