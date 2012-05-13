# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdParts(GrdBase):

	def afterInitAll(self):
		super(GrdParts, self).afterInitAll()
		biz = self.Form.getBizobj("parts")

		if not biz:
			# needed for testing
			class Biz(object):
				def getColCaption(self, caption):
					return caption
			biz = Biz()



		# Delete or comment out any columns you don't want...
		self.addColumn(dabo.ui.dColumn(self, DataField="name", 
				Caption=biz.getColCaption("name"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="current", 
				Caption=biz.getColCaption("current"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="voltage", 
				Caption=biz.getColCaption("voltage"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="power", 
				Caption=biz.getColCaption("power"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="accuracy", 
				Caption=biz.getColCaption("accuracy"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmParts import FrmParts
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmParts):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdParts", Testing=True)
	test = GrdParts(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
