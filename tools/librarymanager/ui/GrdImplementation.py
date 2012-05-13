# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdImplementation(GrdBase):

	def afterInitAll(self):
		super(GrdImplementation, self).afterInitAll()
		biz = self.Form.getBizobj("implementation")

		if not biz:
			# needed for testing
			class Biz(object):
				def getColCaption(self, caption):
					return caption
			biz = Biz()



		# Delete or comment out any columns you don't want...
		self.addColumn(dabo.ui.dColumn(self, DataField="partid", 
				Caption=biz.getColCaption("partid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="manufacturerid", 
				Caption=biz.getColCaption("manufacturerid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmImplementation import FrmImplementation
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmImplementation):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdImplementation", Testing=True)
	test = GrdImplementation(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
