# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdShape import GrdShape
from PagSelectShape import PagSelectShape
from PagEditShape import PagEditShape


class FrmShape(FrmBase):

	def initProperties(self):
		super(FrmShape, self).initProperties()
		self.NameBase = "frmShape"
		self.Caption = "Shapes"
		self.SelectPageClass = PagSelectShape
		self.BrowseGridClass = GrdShape
		self.EditPageClass = PagEditShape


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizShape = app.biz.Shape(app.dbConnection)
			self.addBizobj(bizShape)
		super(FrmShape, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmShape(Caption="Test Of FrmShape", Testing=True)
	frm.show()
	app.start()
