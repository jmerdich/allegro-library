# -*- coding: utf-8 -*-

import dabo
import dabo.dEvents as dEvents


class MenFileOpen(dabo.ui.dMenu):

	def initProperties(self):
		super(MenFileOpen, self).initProperties()
		self.Caption = "&Open"
		self.HelpText = "Open a module"


	def afterInit(self):
		app = self.Application
		autoHotKeys = True

		# Define the forms you want in your open menu here. Insert a ("-", None)
		# tuple and the code below will insert a separator in its place. Explicitly
		# set up which character has the hotkey by adding a & in front of it and
		# by turning off the autoHotKeys flag.

		forms = (
			("Parts", app.ui.FrmParts),
			("Categories", app.ui.FrmCategories),
			("Symbols", app.ui.FrmSymbol),
			("Libraries", app.ui.FrmLibraries),
			("Distributors", app.ui.FrmDistributor),
			("Manufacturers", app.ui.FrmManufacturers),
			("Footprints", app.ui.FrmFootprints),
			("Pads", app.ui.FrmPads),
			("Shapes", app.ui.FrmShape),
			("Flash shapes", app.ui.FrmFlash),
			)

		for form in forms:
			caption = form[0]
			if caption == "-":
				# insert separator instead:
				self.appendSeparator()
			else:
				if autoHotKeys and "&" not in caption:
					caption = "&%s" % caption
				plainCaption = caption.replace("&", "")
				itm = dabo.ui.dMenuItem(self, Caption=caption,
						HelpText="Open the %s module" % plainCaption,
						Tag=form[1])
				itm.bindEvent(dEvents.Hit, self.openForm)
				self.appendItem(itm)


	def openForm(self, evt):
		app = self.Application
		mainForm = app.MainForm
		frm = evt.EventObject.Tag(mainForm)
		frm.show()
