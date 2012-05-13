# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdFlash import GrdFlash
from PagSelectFlash import PagSelectFlash
from PagEditFlash import PagEditFlash


class FrmFlash(FrmBase):

	def initProperties(self):
		super(FrmFlash, self).initProperties()
		self.NameBase = "frmFlash"
		self.Caption = "Flash shapes"
		self.SelectPageClass = PagSelectFlash
		self.BrowseGridClass = GrdFlash
		self.EditPageClass = PagEditFlash


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizFlash = app.biz.Flash(app.dbConnection)
			self.addBizobj(bizFlash)
		super(FrmFlash, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmFlash(Caption="Test Of FrmFlash", Testing=True)
	frm.show()
	app.start()
