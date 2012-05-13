# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from PagEditBase import PagEditBase


class PagEditPart(PagEditBase):

	def createItems(self):
		"""Called by the datanav framework, when it is time to create the controls."""

		biz = self.Form.getBizobj("part")
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

		## Field part.partid
		label = dabo.ui.dLabel(self, NameBase="lblpartid", 
					Caption=biz.getColCaption("partid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="partid",
				DataSource="part", DataField="partid",
				ToolTipText=biz.getColToolTip("partid"),
				HelpText=biz.getColHelpText("partid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field part.footprintid
		label = dabo.ui.dLabel(self, NameBase="lblfootprintid", 
					Caption=biz.getColCaption("footprintid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="footprintid",
				DataSource="part", DataField="footprintid",
				ToolTipText=biz.getColToolTip("footprintid"),
				HelpText=biz.getColHelpText("footprintid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field part.symbolid
		label = dabo.ui.dLabel(self, NameBase="lblsymbolid", 
					Caption=biz.getColCaption("symbolid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="symbolid",
				DataSource="part", DataField="symbolid",
				ToolTipText=biz.getColToolTip("symbolid"),
				HelpText=biz.getColHelpText("symbolid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field part.verificationstatus
		label = dabo.ui.dLabel(self, NameBase="lblverificationstatus", 
					Caption=biz.getColCaption("verificationstatus"))
		objectRef = dabo.ui.dTextBox(self, NameBase="verificationstatus",
				DataSource="part", DataField="verificationstatus",
				ToolTipText=biz.getColToolTip("verificationstatus"),
				HelpText=biz.getColHelpText("verificationstatus")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field part.comments
		label = dabo.ui.dLabel(self, NameBase="lblcomments", 
					Caption=biz.getColCaption("comments"))
		objectRef = dabo.ui.dTextBox(self, NameBase="comments",
				DataSource="part", DataField="comments",
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

		super(PagEditPart, self).createItems()


if __name__ == "__main__":
	from FrmPart import FrmPart
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmPart):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagEditPart", Testing=True)
	test = PagEditPart(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
