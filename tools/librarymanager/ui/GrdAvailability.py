# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdAvailability(GrdBase):

	def afterInitAll(self):
		super(GrdAvailability, self).afterInitAll()
		biz = self.Form.getBizobj("availability")

		if not biz:
			# needed for testing
			class Biz(object):
				def getColCaption(self, caption):
					return caption
			biz = Biz()



		# Delete or comment out any columns you don't want...
		self.addColumn(dabo.ui.dColumn(self, DataField="implementationid", 
				Caption=biz.getColCaption("implementationid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="distributorid", 
				Caption=biz.getColCaption("distributorid"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="partnumber", 
				Caption=biz.getColCaption("partnumber"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="price", 
				Caption=biz.getColCaption("price"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="date", 
				Caption=biz.getColCaption("date"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmAvailability import FrmAvailability
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmAvailability):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdAvailability", Testing=True)
	test = GrdAvailability(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
