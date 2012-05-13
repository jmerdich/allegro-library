# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
import dabo.dEvents as dEvents
from dabo.dLocalize import _, n_
from PagSelectBase import PagSelectBase, IGNORE_STRING, SelectTextBox, \
		SelectCheckBox, SelectLabel, SelectDateTextBox, SelectSpinner, \
		SelectionOpDropdown, SortLabel


class PagSelectAvailability(PagSelectBase):

	
	def getSelectOptionsPanel(self):
		"""Return the panel to contain all the select options."""

		biz = self.Form.getBizobj()
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
		
		panel = dabo.ui.dPanel(self)
		gsz = dabo.ui.dGridSizer(VGap=5, HGap=10)
		gsz.MaxCols = 3
		label = dabo.ui.dLabel(panel)
		label.Caption = _("Please enter your record selection criteria:")
		label.FontSize = label.FontSize + 2
		label.FontBold = True
		gsz.append(label, colSpan=3, alignment="center")

		##
		## Field availability.implementationid
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("implementationid")
		lbl.relatedDataField = "implementationid"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("int", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("int")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["implementationid"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "int"
					}
		else:
			dabo.log.error("No control class found for field 'implementationid'.")
			lbl.release()
			opList.release()


		##
		## Field availability.distributorid
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("distributorid")
		lbl.relatedDataField = "distributorid"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("int", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("int")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["distributorid"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "int"
					}
		else:
			dabo.log.error("No control class found for field 'distributorid'.")
			lbl.release()
			opList.release()


		##
		## Field availability.partnumber
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("partnumber")
		lbl.relatedDataField = "partnumber"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("char", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("char")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["partnumber"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "char"
					}
		else:
			dabo.log.error("No control class found for field 'partnumber'.")
			lbl.release()
			opList.release()


		##
		## Field availability.price
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("price")
		lbl.relatedDataField = "price"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("char", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("char")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["price"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "char"
					}
		else:
			dabo.log.error("No control class found for field 'price'.")
			lbl.release()
			opList.release()


		##
		## Field availability.date
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("date")
		lbl.relatedDataField = "date"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("char", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("char")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["date"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "char"
					}
		else:
			dabo.log.error("No control class found for field 'date'.")
			lbl.release()
			opList.release()


		##
		## Field availability.comments
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("comments")
		lbl.relatedDataField = "comments"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("char", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("char")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["comments"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "char"
					}
		else:
			dabo.log.error("No control class found for field 'comments'.")
			lbl.release()
			opList.release()

		# Now add the limit field
		lbl = dabo.ui.dLabel(panel)
		lbl.Caption =  _("&Limit:")
		limTxt = SelectTextBox(panel)
		if len(limTxt.Value) == 0:
			limTxt.Value = "1000"
		self.selectFields["limit"] = {"ctrl" : limTxt}
		gsz.append(lbl, alignment="right")
		gsz.append(limTxt)

		# Custom SQL checkbox:
		chkCustomSQL = dabo.ui.dCheckBox(panel, Caption=_("Use Custom SQL"))
		chkCustomSQL.bindEvent(dEvents.Hit, self.onCustomSQL)
		gsz.append(chkCustomSQL)

		# Requery button:
		requeryButton = dabo.ui.dButton(panel)
		requeryButton.Caption =  _("&Requery")
		requeryButton.DefaultButton = True
		requeryButton.bindEvent(dEvents.Hit, self.onRequery)
		btnRow = gsz.findFirstEmptyCell()[0] + 1
		gsz.append(requeryButton, "expand", row=btnRow, col=1,
				halign="right", border=3)

		# Make the last column growable
		gsz.setColExpand(True, 2)
		panel.Sizer = gsz

		vsz = dabo.ui.dSizer("v")
		vsz.append(gsz, 1, "expand")
		return panel





if __name__ == "__main__":
	from FrmAvailability import FrmAvailability
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmAvailability):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagSelectAvailability", Testing=True)
	test = PagSelectAvailability(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
