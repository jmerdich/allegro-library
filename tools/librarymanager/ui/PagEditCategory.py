# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from PagEditBase import PagEditBase


class PagEditCategory(PagEditBase):

	def createItems(self):
		"""Called by the datanav framework, when it is time to create the controls."""

		biz = self.Form.getBizobj("category")
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

		## Field category.partid
		label = dabo.ui.dLabel(self, NameBase="lblpartid", 
					Caption=biz.getColCaption("partid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="partid",
				DataSource="category", DataField="partid",
				ToolTipText=biz.getColToolTip("partid"),
				HelpText=biz.getColHelpText("partid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field category.catid
		label = dabo.ui.dLabel(self, NameBase="lblcatid", 
					Caption=biz.getColCaption("catid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="catid",
				DataSource="category", DataField="catid",
				ToolTipText=biz.getColToolTip("catid"),
				HelpText=biz.getColHelpText("catid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field category.comments
		label = dabo.ui.dLabel(self, NameBase="lblcomments", 
					Caption=biz.getColCaption("comments"))
		objectRef = dabo.ui.dTextBox(self, NameBase="comments",
				DataSource="category", DataField="comments",
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

		super(PagEditCategory, self).createItems()


if __name__ == "__main__":
	from FrmCategory import FrmCategory
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmCategory):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagEditCategory", Testing=True)
	test = PagEditCategory(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
