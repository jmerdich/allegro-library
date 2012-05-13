# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdPads import GrdPads
from PagSelectPads import PagSelectPads
from PagEditPads import PagEditPads


class FrmPads(FrmBase):

	def initProperties(self):
		super(FrmPads, self).initProperties()
		self.NameBase = "frmPads"
		self.Caption = "Pads"
		self.SelectPageClass = PagSelectPads
		self.BrowseGridClass = GrdPads
		self.EditPageClass = PagEditPads


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizPads = app.biz.Pads(app.dbConnection)
			self.addBizobj(bizPads)
		super(FrmPads, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmPads(Caption="Test Of FrmPads", Testing=True)
	frm.show()
	app.start()
