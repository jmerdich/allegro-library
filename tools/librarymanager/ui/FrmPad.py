# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdPad import GrdPad
from PagSelectPad import PagSelectPad
from PagEditPad import PagEditPad


class FrmPad(FrmBase):

	def initProperties(self):
		super(FrmPad, self).initProperties()
		self.NameBase = "frmPad"
		self.Caption = "Pad"
		self.SelectPageClass = PagSelectPad
		self.BrowseGridClass = GrdPad
		self.EditPageClass = PagEditPad


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizPad = app.biz.Pad(app.dbConnection)
			self.addBizobj(bizPad)
		super(FrmPad, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmPad(Caption="Test Of FrmPad", Testing=True)
	frm.show()
	app.start()
