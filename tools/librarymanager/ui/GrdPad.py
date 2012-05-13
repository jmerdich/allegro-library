# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdPad(GrdBase):

	def afterInitAll(self):
		super(GrdPad, self).afterInitAll()
		biz = self.Form.getBizobj("pad")

		if not biz:
			# needed for testing
			class Biz(object):
				def getColCaption(self, caption):
					return caption
			biz = Biz()



		# Delete or comment out any columns you don't want...
		self.addColumn(dabo.ui.dColumn(self, DataField="padid", 
				Caption=biz.getColCaption("padid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="flashid", 
				Caption=biz.getColCaption("flashid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="shapeid", 
				Caption=biz.getColCaption("shapeid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmPad import FrmPad
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmPad):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdPad", Testing=True)
	test = GrdPad(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
