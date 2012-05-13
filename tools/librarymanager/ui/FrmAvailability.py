# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdAvailability import GrdAvailability
from PagSelectAvailability import PagSelectAvailability
from PagEditAvailability import PagEditAvailability


class FrmAvailability(FrmBase):

	def initProperties(self):
		super(FrmAvailability, self).initProperties()
		self.NameBase = "frmAvailability"
		self.Caption = "Availability"
		self.SelectPageClass = PagSelectAvailability
		self.BrowseGridClass = GrdAvailability
		self.EditPageClass = PagEditAvailability


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizAvailability = app.biz.Availability(app.dbConnection)
			self.addBizobj(bizAvailability)
		super(FrmAvailability, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmAvailability(Caption="Test Of FrmAvailability", Testing=True)
	frm.show()
	app.start()
