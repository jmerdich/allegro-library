# -*- coding: utf-8 -*-

import os
import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from FrmBase import FrmBase
from GrdDistributor import GrdDistributor
from PagSelectDistributor import PagSelectDistributor
from PagEditDistributor import PagEditDistributor


class FrmDistributor(FrmBase):

	def initProperties(self):
		super(FrmDistributor, self).initProperties()
		self.NameBase = "frmDistributor"
		self.Caption = "Distributors"
		self.SelectPageClass = PagSelectDistributor
		self.BrowseGridClass = GrdDistributor
		self.EditPageClass = PagEditDistributor


	def afterInit(self):
		if not self.Testing:
			# Instantiate the bizobj and register it with dForm, and then let the
			# superclass take over.
			app = self.Application
			bizDistributor = app.biz.Distributor(app.dbConnection)
			self.addBizobj(bizDistributor)
		super(FrmDistributor, self).afterInit()


if __name__ == "__main__":
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	frm = FrmDistributor(Caption="Test Of FrmDistributor", Testing=True)
	frm.show()
	app.start()
