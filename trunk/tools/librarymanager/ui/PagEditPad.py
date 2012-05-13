# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from PagEditBase import PagEditBase


class PagEditPad(PagEditBase):

	def createItems(self):
		"""Called by the datanav framework, when it is time to create the controls."""

		biz = self.Form.getBizobj("pad")
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

		## Field pad.padid
		label = dabo.ui.dLabel(self, NameBase="lblpadid", 
					Caption=biz.getColCaption("padid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="padid",
				DataSource="pad", DataField="padid",
				ToolTipText=biz.getColToolTip("padid"),
				HelpText=biz.getColHelpText("padid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field pad.flashid
		label = dabo.ui.dLabel(self, NameBase="lblflashid", 
					Caption=biz.getColCaption("flashid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="flashid",
				DataSource="pad", DataField="flashid",
				ToolTipText=biz.getColToolTip("flashid"),
				HelpText=biz.getColHelpText("flashid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field pad.shapeid
		label = dabo.ui.dLabel(self, NameBase="lblshapeid", 
					Caption=biz.getColCaption("shapeid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="shapeid",
				DataSource="pad", DataField="shapeid",
				ToolTipText=biz.getColToolTip("shapeid"),
				HelpText=biz.getColHelpText("shapeid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field pad.comments
		label = dabo.ui.dLabel(self, NameBase="lblcomments", 
					Caption=biz.getColCaption("comments"))
		objectRef = dabo.ui.dTextBox(self, NameBase="comments",
				DataSource="pad", DataField="comments",
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

		super(PagEditPad, self).createItems()


if __name__ == "__main__":
	from FrmPad import FrmPad
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmPad):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagEditPad", Testing=True)
	test = PagEditPad(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
