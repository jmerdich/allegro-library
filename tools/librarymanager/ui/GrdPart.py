# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdPart(GrdBase):

	def afterInitAll(self):
		super(GrdPart, self).afterInitAll()
		biz = self.Form.getBizobj("part")

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

		self.addColumn(dabo.ui.dColumn(self, DataField="footprintid", 
				Caption=biz.getColCaption("footprintid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="symbolid", 
				Caption=biz.getColCaption("symbolid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="verificationstatus", 
				Caption=biz.getColCaption("verificationstatus"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmPart import FrmPart
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmPart):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdPart", Testing=True)
	test = GrdPart(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
