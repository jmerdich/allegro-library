# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from PagEditBase import PagEditBase


class PagEditImplementation(PagEditBase):

	def createItems(self):
		"""Called by the datanav framework, when it is time to create the controls."""

		biz = self.Form.getBizobj("implementation")
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

		## Field implementation.partid
		label = dabo.ui.dLabel(self, NameBase="lblpartid", 
					Caption=biz.getColCaption("partid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="partid",
				DataSource="implementation", DataField="partid",
				ToolTipText=biz.getColToolTip("partid"),
				HelpText=biz.getColHelpText("partid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field implementation.manufacturerid
		label = dabo.ui.dLabel(self, NameBase="lblmanufacturerid", 
					Caption=biz.getColCaption("manufacturerid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="manufacturerid",
				DataSource="implementation", DataField="manufacturerid",
				ToolTipText=biz.getColToolTip("manufacturerid"),
				HelpText=biz.getColHelpText("manufacturerid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field implementation.comments
		label = dabo.ui.dLabel(self, NameBase="lblcomments", 
					Caption=biz.getColCaption("comments"))
		objectRef = dabo.ui.dTextBox(self, NameBase="comments",
				DataSource="implementation", DataField="comments",
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

		super(PagEditImplementation, self).createItems()


if __name__ == "__main__":
	from FrmImplementation import FrmImplementation
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmImplementation):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagEditImplementation", Testing=True)
	test = PagEditImplementation(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
