# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
from PagEditBase import PagEditBase


class PagEditAvailability(PagEditBase):

	def createItems(self):
		"""Called by the datanav framework, when it is time to create the controls."""

		biz = self.Form.getBizobj("availability")
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

		## Field availability.implementationid
		label = dabo.ui.dLabel(self, NameBase="lblimplementationid", 
					Caption=biz.getColCaption("implementationid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="implementationid",
				DataSource="availability", DataField="implementationid",
				ToolTipText=biz.getColToolTip("implementationid"),
				HelpText=biz.getColHelpText("implementationid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field availability.distributorid
		label = dabo.ui.dLabel(self, NameBase="lbldistributorid", 
					Caption=biz.getColCaption("distributorid"))
		objectRef = dabo.ui.dTextBox(self, NameBase="distributorid",
				DataSource="availability", DataField="distributorid",
				ToolTipText=biz.getColToolTip("distributorid"),
				HelpText=biz.getColHelpText("distributorid")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field availability.partnumber
		label = dabo.ui.dLabel(self, NameBase="lblpartnumber", 
					Caption=biz.getColCaption("partnumber"))
		objectRef = dabo.ui.dTextBox(self, NameBase="partnumber",
				DataSource="availability", DataField="partnumber",
				ToolTipText=biz.getColToolTip("partnumber"),
				HelpText=biz.getColHelpText("partnumber")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field availability.price
		label = dabo.ui.dLabel(self, NameBase="lblprice", 
					Caption=biz.getColCaption("price"))
		objectRef = dabo.ui.dTextBox(self, NameBase="price",
				DataSource="availability", DataField="price",
				ToolTipText=biz.getColToolTip("price"),
				HelpText=biz.getColHelpText("price")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field availability.date
		label = dabo.ui.dLabel(self, NameBase="lbldate", 
					Caption=biz.getColCaption("date"))
		objectRef = dabo.ui.dTextBox(self, NameBase="date",
				DataSource="availability", DataField="date",
				ToolTipText=biz.getColToolTip("date"),
				HelpText=biz.getColHelpText("date")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field availability.comments
		label = dabo.ui.dLabel(self, NameBase="lblcomments", 
					Caption=biz.getColCaption("comments"))
		objectRef = dabo.ui.dTextBox(self, NameBase="comments",
				DataSource="availability", DataField="comments",
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

		super(PagEditAvailability, self).createItems()


if __name__ == "__main__":
	from FrmAvailability import FrmAvailability
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmAvailability):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagEditAvailability", Testing=True)
	test = PagEditAvailability(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
