# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdFootprints import GrdFootprints
from PagSelectFootprints import PagSelectFootprints
from PagEditFootprints import PagEditFootprints


class FrmFootprints(FrmBase):

	def initProperties(self):
		super(FrmFootprints, self).initProperties()
		self.NameBase = "frmFootprints"
		self.Caption = "Footprints"
		self.SelectPageClass = PagSelectFootprints
		self.BrowseGridClass = GrdFootprints
		self.EditPageClass = PagEditFootprints


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizFootprints = app.biz.Footprints(app.dbConnection)
			self.addBizobj(bizFootprints)
		super(FrmFootprints, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmFootprints(Caption="Test Of FrmFootprints", Testing=True)
	frm.show()
	app.start()
