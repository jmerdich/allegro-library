# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdSymbol(GrdBase):

	def afterInitAll(self):
		super(GrdSymbol, self).afterInitAll()
		biz = self.Form.getBizobj("symbol")

		if not biz:
			# needed for testing
			class Biz(object):
				def getColCaption(self, caption):
					return caption
			biz = Biz()



		# Delete or comment out any columns you don't want...
		self.addColumn(dabo.ui.dColumn(self, DataField="library", 
				Caption=biz.getColCaption("library"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="name", 
				Caption=biz.getColCaption("name"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmSymbol import FrmSymbol
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmSymbol):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdSymbol", Testing=True)
	test = GrdSymbol(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
