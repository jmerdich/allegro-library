# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from GrdBase import GrdBase


class GrdLibraries(GrdBase):

	def afterInitAll(self):
		super(GrdLibraries, self).afterInitAll()
		biz = self.Form.getBizobj("libraries")

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

		self.addColumn(dabo.ui.dColumn(self, DataField="path", 
				Caption=biz.getColCaption("path"),
				Sortable=True, Searchable=True, Editable=False))

		self.addColumn(dabo.ui.dColumn(self, DataField="comments", 
				Caption=biz.getColCaption("comments"),
				Sortable=True, Searchable=True, Editable=False))



if __name__ == "__main__":
	from FrmLibraries import FrmLibraries
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmLibraries):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of GrdLibraries", Testing=True)
	test = GrdLibraries(frm)
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
