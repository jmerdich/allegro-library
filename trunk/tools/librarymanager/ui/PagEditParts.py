# -*- coding: utf-8 -*-

import dabo
import dabo.ui
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
import dabo.dEvents as dEvents	
from dabo.dLocalize import _, n_	
from PagEditBase import PagEditBase
from CklCategories import CklCategoriesEdit
from LCtrlPart import LCtrlPart
import DlgEditFootprint
import wx

class PagEditParts(PagEditBase):
	def onAddFootprint(self, event):
		self.onEditFootprint()
	def onEditFootprint(self, id=None):
		dialog = DlgEditFootprint.DlgEditFootprint(self.Form, id)
		dialog.show()
		
		if dialog.OK:
			#get data
			footprintid = dialog.footprintdl.Value
			symbolid = dialog.symboldl.Value
			verified = 0
			comments = dialog.commenttb.Value
			if id is not None:
				self.Form.delFootprint(id)
			self.Form.addFootprint(footprintid, symbolid, verified, comments)
			biz = self.Form.getBizobj("parts")
			self.footprintlist.update()	
			biz.requery()
		dialog.release()

	def createItems(self):
		"""Called by the datanav framework, when it is time to create the controls."""

		biz = self.Form.getBizobj("parts")
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


		mainSizer = self.Sizer = dabo.ui.dSizer("h")
		gs = dabo.ui.dGridSizer(VGap=7, HGap=5, MaxCols=3)

		## Field parts.name
		label = dabo.ui.dLabel(self, NameBase="lblname", 
					Caption=biz.getColCaption("name"))
		objectRef = dabo.ui.dTextBox(self, NameBase="name",
				DataSource="parts", DataField="name",
				ToolTipText=biz.getColToolTip("name"),
				HelpText=biz.getColHelpText("name")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field parts.current
		label = dabo.ui.dLabel(self, NameBase="lblcurrent", 
					Caption=biz.getColCaption("current"))
		objectRef = dabo.ui.dTextBox(self, NameBase="current",
				DataSource="parts", DataField="current",
				ToolTipText=biz.getColToolTip("current"),
				HelpText=biz.getColHelpText("current")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field parts.voltage
		label = dabo.ui.dLabel(self, NameBase="lblvoltage", 
					Caption=biz.getColCaption("voltage"))
		objectRef = dabo.ui.dTextBox(self, NameBase="voltage",
				DataSource="parts", DataField="voltage",
				ToolTipText=biz.getColToolTip("voltage"),
				HelpText=biz.getColHelpText("voltage")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field parts.power
		label = dabo.ui.dLabel(self, NameBase="lblpower", 
					Caption=biz.getColCaption("power"))
		objectRef = dabo.ui.dTextBox(self, NameBase="power",
				DataSource="parts", DataField="power",
				ToolTipText=biz.getColToolTip("power"),
				HelpText=biz.getColHelpText("power")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field parts.accuracy
		label = dabo.ui.dLabel(self, NameBase="lblaccuracy", 
					Caption=biz.getColCaption("accuracy"))
		objectRef = dabo.ui.dTextBox(self, NameBase="accuracy",
				DataSource="parts", DataField="accuracy",
				ToolTipText=biz.getColToolTip("accuracy"),
				HelpText=biz.getColHelpText("accuracy")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		## Field parts.comments
		label = dabo.ui.dLabel(self, NameBase="lblcomments", 
					Caption=biz.getColCaption("comments"))
		objectRef = dabo.ui.dTextBox(self, NameBase="comments",
				DataSource="parts", DataField="comments",
				ToolTipText=biz.getColToolTip("comments"),
				HelpText=biz.getColHelpText("comments")
)

		gs.append(label, alignment=("top", "right") )
		gs.append(objectRef, "expand")
		gs.append( (25, 1) )

		gs.setColExpand(True, 1)
		
		vsLeft = dabo.ui.dSizer("v")
		vsLeft.insert(0, gs, "expand", 1, border=20, borderSides=("top", "bottom", "left"))
		#Implementation details
		# Add text "implementation details" to vertical sizer left
		label = dabo.ui.dLabel(self, Caption=_("Implementation Details"))
		label.FontSize = label.FontSize + 1
		label.FontBold = True
		vsLeft.append(label, alignment="center")

		# Add Footprint/Symbol button:
		addfootprintButton = dabo.ui.dButton(self)
		addfootprintButton.Caption =  _("&Add Footprint/Symbol")
		addfootprintButton.DefaultButton = True
		addfootprintButton.bindEvent(dEvents.Hit, self.onAddFootprint)
		vsLeft.append(addfootprintButton, alignment="center", border=2, borderSides=("top", "bottom", "left"))		
		
		# Add listbox with footprint to horizontal sizer
		self.footprintlist = LCtrlPart(self)
		vsLeft.append(self.footprintlist, "expand", alignment="left")

		mainSizer.append(vsLeft, "expand", border=20, borderSides=("top", "bottom", "right"))

		#Vertical sizer to contain the categories
		vsRight = dabo.ui.dSizer("v")
		mainSizer.append(vsRight, "expand", border=20, borderSides=("top", "bottom", "right"))
		
		vsRight.append(CklCategoriesEdit(self), 1, "expand")
		
		# Add top and bottom margins
		mainSizer.insert( 0, (-1, 10), 0)
		mainSizer.append( (-1, 20), 0)

		self.Sizer.layout()
		self.itemsCreated = True

		super(PagEditParts, self).createItems()


if __name__ == "__main__":
	from FrmParts import FrmParts
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmParts):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagEditParts", Testing=True)
	test = PagEditParts(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
