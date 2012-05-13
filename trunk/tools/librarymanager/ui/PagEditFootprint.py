# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from PagEditBase import PagEditBase


class PagEditFootprint(PagEditBase):

	def createItems(self):
		"""Called by the datanav framework, when it is time to create the controls."""

		biz = self.Form.getBizobj("footprint")
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

		## Field footprint.footprintid
		label = dabo.ui.dLabel(self, NameBase="lblfootprintid", 
					Caption=biz.getColCaption("footprintid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="footprintid",
				DataSource="footprint", DataField="footprintid",
				ToolTipText=biz.getColToolTip("footprintid"),
				HelpText=biz.getColHelpText("footprintid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field footprint.padsid
		label = dabo.ui.dLabel(self, NameBase="lblpadsid", 
					Caption=biz.getColCaption("padsid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="padsid",
				DataSource="footprint", DataField="padsid",
				ToolTipText=biz.getColToolTip("padsid"),
				HelpText=biz.getColHelpText("padsid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field footprint.comments
		label = dabo.ui.dLabel(self, NameBase="lblcomments", 
					Caption=biz.getColCaption("comments"))
		objectRef = dabo.ui.dTextBox(self, NameBase="comments",
				DataSource="footprint", DataField="comments",
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

		super(PagEditFootprint, self).createItems()


if __name__ == "__main__":
	from FrmFootprint import FrmFootprint
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmFootprint):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagEditFootprint", Testing=True)
	test = PagEditFootprint(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
