# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from PagEditBase import PagEditBase


class PagEditSymbol(PagEditBase):

	def createItems(self):
		"""Called by the datanav framework, when it is time to create the controls."""

		biz = self.Form.getBizobj("symbol")
		if not biz:
			# needed for tsting
			class Biz(object):
				def getColCaption(self, caption):
					return caption
				def getColToolTip(self, tip):
					return tip
				def getColHelpText(self, txt):
					return txt
			biz = Biz()


		mainSizer = self.Sizer = dabo.ui.dSizer("v")
		gs = dabo.ui.dGridSizer(VGap=7, HGap=5, MaxCols=3)

		## Field symbol.library
		label = dabo.ui.dLabel(self, NameBase="lbllibrary", 
					Caption=biz.getColCaption("library"))
		objectRef = dabo.ui.dTextBox(self, NameBase="library",
				DataSource="symbol", DataField="library",
				ToolTipText=biz.getColToolTip("library"),
				HelpText=biz.getColHelpText("library")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field symbol.name
		label = dabo.ui.dLabel(self, NameBase="lblname", 
					Caption=biz.getColCaption("name"))
		objectRef = dabo.ui.dTextBox(self, NameBase="name",
				DataSource="symbol", DataField="name",
				ToolTipText=biz.getColToolTip("name"),
				HelpText=biz.getColHelpText("name")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field symbol.comments
		label = dabo.ui.dLabel(self, NameBase="lblcomments", 
					Caption=biz.getColCaption("comments"))
		objectRef = dabo.ui.dTextBox(self, NameBase="comments",
				DataSource="symbol", DataField="comments",
				ToolTipText=biz.getColToolTip("comments"),
				HelpText=biz.getColHelpText("comments")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		gs.setColExpand(True, 1)

		mainSizer.insert(0, gs, "expand", 1, border=20)

		# Add top and bottom margins
		mainSizer.insert( 0, (-1, 10), 0)
		mainSizer.append( (-1, 20), 0)

		self.Sizer.layout()
		self.itemsCreated = True

		super(PagEditSymbol, self).createItems()


if __name__ == "__main__":
	from FrmSymbol import FrmSymbol
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmSymbol):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagEditSymbol", Testing=True)
	test = PagEditSymbol(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
