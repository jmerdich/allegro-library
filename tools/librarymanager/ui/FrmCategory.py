# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdCategory import GrdCategory
from PagSelectCategory import PagSelectCategory
from PagEditCategory import PagEditCategory


class FrmCategory(FrmBase):

	def initProperties(self):
		super(FrmCategory, self).initProperties()
		self.NameBase = "frmCategory"
		self.Caption = "Categories"
		self.SelectPageClass = PagSelectCategory
		self.BrowseGridClass = GrdCategory
		self.EditPageClass = PagEditCategory


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizCategory = app.biz.Category(app.dbConnection)
			self.addBizobj(bizCategory)
		super(FrmCategory, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmCategory(Caption="Test Of FrmCategory", Testing=True)
	frm.show()
	app.start()
