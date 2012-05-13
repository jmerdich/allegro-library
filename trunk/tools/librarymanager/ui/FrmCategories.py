# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdCategories import GrdCategories
from PagSelectCategories import PagSelectCategories
from PagEditCategories import PagEditCategories


class FrmCategories(FrmBase):

	def initProperties(self):
		super(FrmCategories, self).initProperties()
		self.NameBase = "frmCategories"
		self.Caption = "Categories"
		self.SelectPageClass = PagSelectCategories
		self.BrowseGridClass = GrdCategories
		self.EditPageClass = PagEditCategories


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizCategories = app.biz.Categories(app.dbConnection)
			self.addBizobj(bizCategories)
		super(FrmCategories, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmCategories(Caption="Test Of FrmCategories", Testing=True)
	frm.show()
	app.start()
