# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdCategory(GrdBase):

	def afterInitAll(self):
		super(GrdCategory, self).afterInitAll()
		biz = self.Form.getBizobj("category")

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

		self.addColumn(dabo.ui.dColumn(self, DataField="catid", 
				Caption=biz.getColCaption("catid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmCategory import FrmCategory
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmCategory):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdCategory", Testing=True)
	test = GrdCategory(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
