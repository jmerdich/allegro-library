# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdPart import GrdPart
from PagSelectPart import PagSelectPart
from PagEditPart import PagEditPart


class FrmPart(FrmBase):

	def initProperties(self):
		super(FrmPart, self).initProperties()
		self.NameBase = "frmPart"
		self.Caption = "Part"
		self.SelectPageClass = PagSelectPart
		self.BrowseGridClass = GrdPart
		self.EditPageClass = PagEditPart


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizPart = app.biz.Part(app.dbConnection)
			self.addBizobj(bizPart)
		super(FrmPart, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmPart(Caption="Test Of FrmPart", Testing=True)
	frm.show()
	app.start()
