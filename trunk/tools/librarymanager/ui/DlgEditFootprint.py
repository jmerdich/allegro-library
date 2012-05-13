# -*- coding: utf-8 -*-

import dabo
import dabo.ui
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
import dabo.dEvents as dEvents	
from dabo.dLocalize import _, n_	
from PagEditBase import PagEditBase
from CklCategories import CklCategoriesEdit
from DdlFootprint import DdlFootprint
from DdlLibrary import DdlLibrary
from DdlSymbol import DdlSymbol
from PagSelectBase import IGNORE_STRING, SortLabel
import wx

class DlgEditFootprint(dabo.ui.dDialog):
	def __init__(self, form, id):
		self.baseform = form
		self.id = id
		dabo.ui.dDialog.__init__(self)
		
	def onAddFootprint(self, event):
		self.OK = True
		self.hide()
		
	def onCancel(self, event):
		self.hide()
		
	def onLibValueChange(self, event):
		value = self.librarydl.Value
		self.symboldl.updateChoices(value)
		
	def afterInit(self):
		self.OK = False
		self.Caption = "Add footprint/symbol"
		self.Sizer = dabo.ui.dSizer("v") 
		panel = self.Panel = dabo.ui.dPanel(self)
		# Create an initial sizer to add to
		sz  = panel.Sizer = dabo.ui.dSizer("vertical")
		gsz = dabo.ui.dGridSizer(VGap=5, HGap=10)
		gsz.MaxCols = 2
		
		##
		## Field footprint
		##
		lbl = dabo.ui.dLabel(panel, Caption="footprint")
		self.footprintdl = DdlFootprint(panel, self.baseform)
		gsz.append(lbl, "expand")
		gsz.append(self.footprintdl, "expand")

		##
		## Field library
		##
		lbl = dabo.ui.dLabel(panel, Caption="library")
		self.librarydl = DdlLibrary(panel, self.baseform)
		gsz.append(lbl, "expand")
		gsz.append(self.librarydl, "expand")
		
		##
		## Field symbol
		##
		lbl = dabo.ui.dLabel(panel, Caption="symbol")
		self.symboldl = DdlSymbol(panel, self.baseform)
		self.librarydl.bindEvent(dEvents.ValueChanged, self.onLibValueChange)
		gsz.append(lbl, "expand")
		gsz.append(self.symboldl, "expand")

		##
		## Comments textbox
		##
		lbl = dabo.ui.dLabel(panel, Caption="comments")
		gsz.append(lbl, "expand")
		self.commenttb = dabo.ui.dTextBox(panel, ToolTipText="comments")
		gsz.append(self.commenttb, "expand")
		
		sz.insert(0, gsz, "expand", 1, border=20, borderSides=("top", "bottom", "left", "right"))			
		
		#Set initial values
		if self.id is not None:
			(footprint, library, symbol, comments) = self.baseform.getFootprint(self.id)
			self.footprintdl.setSelection(self.footprintdl.findIndex(footprint))
			self.librarydl.setSelection(self.librarydl.findIndex(library))
			self.symboldl.setSelection(self.symboldl.findIndex(symbol))
			self.commenttb.Value = comments
		
		#Add buttons to vertical sizer
		szh = dabo.ui.dSizer("horizontal")
		# Add Footprint/Symbol button:
		addfootprintButton = dabo.ui.dButton(panel)
		addfootprintButton.Caption =  _("&Add Footprint/Symbol")
		addfootprintButton.DefaultButton = False
		addfootprintButton.bindEvent(dEvents.Hit, self.onAddFootprint)
		szh.append(addfootprintButton, "expand")		
		
		# Cancel button:
		cancelButton = dabo.ui.dButton(panel)
		cancelButton.Caption =  _("&Cancel")
		cancelButton.DefaultButton = True
		cancelButton.bindEvent(dEvents.Hit, self.onCancel)
		szh.append(cancelButton)	
		
		# add the panels to the sizer
		sz.append(szh, "expand")
		self.Sizer.append(panel, "expand")
		self.layout() 


if __name__ == "__main__":
	from FrmParts import FrmParts
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmParts):
		def afterInit(self): pass
	#frm = TestForm(Caption="Test Of FormAddFootprint", Testing=True)
	#test = frm.addObject(CklCategoriesEdit)
	#frm.Sizer.append(test, 1)
	#frm.show()
	#frm.update()
	app.start()

	