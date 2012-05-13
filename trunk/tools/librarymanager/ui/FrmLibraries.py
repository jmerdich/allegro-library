# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdLibraries import GrdLibraries
from PagSelectLibraries import PagSelectLibraries
from PagEditLibraries import PagEditLibraries


class FrmLibraries(FrmBase):

	def initProperties(self):
		super(FrmLibraries, self).initProperties()
		self.NameBase = "frmLibraries"
		self.Caption = "Libraries"
		self.SelectPageClass = PagSelectLibraries
		self.BrowseGridClass = GrdLibraries
		self.EditPageClass = PagEditLibraries


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizLibraries = app.biz.Libraries(app.dbConnection)
			self.addBizobj(bizLibraries)
		super(FrmLibraries, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmLibraries(Caption="Test Of FrmLibraries", Testing=True)
	frm.show()
	app.start()
