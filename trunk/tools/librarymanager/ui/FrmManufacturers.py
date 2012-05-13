# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdManufacturers import GrdManufacturers
from PagSelectManufacturers import PagSelectManufacturers
from PagEditManufacturers import PagEditManufacturers


class FrmManufacturers(FrmBase):

	def initProperties(self):
		super(FrmManufacturers, self).initProperties()
		self.NameBase = "frmManufacturers"
		self.Caption = "Manufacturers"
		self.SelectPageClass = PagSelectManufacturers
		self.BrowseGridClass = GrdManufacturers
		self.EditPageClass = PagEditManufacturers


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizManufacturers = app.biz.Manufacturers(app.dbConnection)
			self.addBizobj(bizManufacturers)
		super(FrmManufacturers, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmManufacturers(Caption="Test Of FrmManufacturers", Testing=True)
	frm.show()
	app.start()
