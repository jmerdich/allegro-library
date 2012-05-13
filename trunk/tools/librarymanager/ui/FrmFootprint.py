# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdFootprint import GrdFootprint
from PagSelectFootprint import PagSelectFootprint
from PagEditFootprint import PagEditFootprint


class FrmFootprint(FrmBase):

	def initProperties(self):
		super(FrmFootprint, self).initProperties()
		self.NameBase = "frmFootprint"
		self.Caption = "Footprint"
		self.SelectPageClass = PagSelectFootprint
		self.BrowseGridClass = GrdFootprint
		self.EditPageClass = PagEditFootprint


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizFootprint = app.biz.Footprint(app.dbConnection)
			self.addBizobj(bizFootprint)
		super(FrmFootprint, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmFootprint(Caption="Test Of FrmFootprint", Testing=True)
	frm.show()
	app.start()
