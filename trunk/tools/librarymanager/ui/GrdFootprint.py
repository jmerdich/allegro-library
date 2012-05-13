# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdFootprint(GrdBase):

	def afterInitAll(self):
		super(GrdFootprint, self).afterInitAll()
		biz = self.Form.getBizobj("footprint")

		if not biz:
			# needed for testing
			class Biz(object):
				def getColCaption(self, caption):
					return caption
			biz = Biz()



		# Delete or comment out any columns you don't want...
		self.addColumn(dabo.ui.dColumn(self, DataField="footprintid", 
				Caption=biz.getColCaption("footprintid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="padsid", 
				Caption=biz.getColCaption("padsid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmFootprint import FrmFootprint
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmFootprint):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdFootprint", Testing=True)
	test = GrdFootprint(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
