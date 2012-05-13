# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdImplementation import GrdImplementation
from PagSelectImplementation import PagSelectImplementation
from PagEditImplementation import PagEditImplementation


class FrmImplementation(FrmBase):

	def initProperties(self):
		super(FrmImplementation, self).initProperties()
		self.NameBase = "frmImplementation"
		self.Caption = "Implementation"
		self.SelectPageClass = PagSelectImplementation
		self.BrowseGridClass = GrdImplementation
		self.EditPageClass = PagEditImplementation


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizImplementation = app.biz.Implementation(app.dbConnection)
			self.addBizobj(bizImplementation)
		super(FrmImplementation, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmImplementation(Caption="Test Of FrmImplementation", Testing=True)
	frm.show()
	app.start()
