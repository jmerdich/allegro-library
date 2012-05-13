# -*- coding: utf-8 -*-

import dabo
if __name__ == "__main__":
	dabo.ui.loadUI("wx")
import dabo.dEvents as dEvents
from dabo.dLocalize import _, n_
from PagSelectBase import PagSelectBase, IGNORE_STRING, SelectTextBox, \
		SelectCheckBox, SelectLabel, SelectDateTextBox, SelectSpinner, \
		SelectionOpDropdown, SortLabel
from ChkSelectOption import ChkSelectOption
from CklCategories import CklCategoriesSelect

class PagSelectParts(PagSelectBase):
	def setFrom(self, biz):
		biz.setJoinClause("")
		#if self.chkCategories.Value:
			# User has enabled category filtering. So dynamically add the 
			# join clause here.             
		biz.addJoin("category", "category.partid = parts.id", "inner")

	def setWhere(self, biz):
		self.super(biz)
		#if self.chkCategories.Value:
			# User has enabled category filtering, so build the where clause 
			# on the selected categories.
		whereString = ""
		for catid in self.cklCategories.KeyValue:
			if whereString:
				whereString += "\n   OR "
			whereString += "category.catid = %s" % catid
		if whereString:
			biz.addWhere("(%s)" % whereString)                
		else:
			# User chose to filter on categories, but then didn't choose any.
			# Default to no category search
			biz.setJoinClause("")
	
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
		
		panel = dabo.ui.dPanel(self, Sizer=dabo.ui.dSizer("v"))
		mainSizer = panel.Sizer = dabo.ui.dSizer("h")
		gsz = dabo.ui.dGridSizer(VGap=5, HGap=10)
		gsz.MaxCols = 3
		label = dabo.ui.dLabel(panel)
		label.Caption = _("Please enter your record selection criteria:")
		label.FontSize = label.FontSize + 2
		label.FontBold = True
		gsz.append(label, colSpan=3, alignment="center")

		##
		## Field parts.name
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("name")
		lbl.relatedDataField = "name"

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
			self.selectFields["name"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "char"
					}
		else:
			dabo.log.error("No control class found for field 'name'.")
			lbl.release()
			opList.release()


		##
		## Field parts.current
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("current")
		lbl.relatedDataField = "current"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("float", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("float")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["current"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "float"
					}
		else:
			dabo.log.error("No control class found for field 'current'.")
			lbl.release()
			opList.release()


		##
		## Field parts.voltage
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("voltage")
		lbl.relatedDataField = "voltage"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("float", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("float")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["voltage"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "float"
					}
		else:
			dabo.log.error("No control class found for field 'voltage'.")
			lbl.release()
			opList.release()


		##
		## Field parts.power
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("power")
		lbl.relatedDataField = "power"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("float", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("float")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["power"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "float"
					}
		else:
			dabo.log.error("No control class found for field 'power'.")
			lbl.release()
			opList.release()


		##
		## Field parts.accuracy
		##
		lbl = SortLabel(panel)
		lbl.Caption = biz.getColCaption("accuracy")
		lbl.relatedDataField = "accuracy"

		# Automatically get the selector options based on the field type:
		opt = self.getSelectorOptions("float", wordSearch=False)

		# Add the blank choice and create the dropdown:
		opt = (IGNORE_STRING,) + tuple(opt)
		opList = SelectionOpDropdown(panel, Choices=opt)

		# Automatically get the control class based on the field type:
		ctrlClass = self.getSearchCtrlClass("float")

		if ctrlClass is not None:
			ctrl = ctrlClass(panel)
			if not opList.StringValue:
				opList.PositionValue = 0
			opList.Target = ctrl

			gsz.append(lbl, halign="right")
			gsz.append(opList, halign="left")
			gsz.append(ctrl, "expand")

			# Store the info for later use when constructing the query
			self.selectFields["accuracy"] = {
					"ctrl" : ctrl,
					"op" : opList,
					"type": "float"
					}
		else:
			dabo.log.error("No control class found for field 'accuracy'.")
			lbl.release()
			opList.release()


		##
		## Field parts.comments
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

		## Categories:        
		#self.chkCategories = ChkSelectOption(panel, Caption="Categories:")
		self.cklCategories = CklCategoriesSelect(panel)
		#self.chkCategories.Control = self.cklCategories
		dabo.ui.callAfterInterval(200, self.cklCategories.updateChoices)
		dabo.ui.callAfterInterval(200, self.cklCategories.restoreValue)

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

		mainSizer.insert(0, gsz, "expand", 1, border=20, borderSides=("top", "bottom", "left"))

		#Vertical sizer to contain the categories
		vsRight = dabo.ui.dSizer("v")
		mainSizer.append(vsRight, "expand", border=20, borderSides=("top", "bottom", "right"))
		#vsRight.append(self.chkCategories, halign="right")    
		vsRight.append(self.cklCategories, "expand")
		
		# Add top and bottom margins
		mainSizer.insert( 0, (-1, 10), 0)
		mainSizer.append( (-1, 20), 0)

		# Make the last column growable
		#gsz.setColExpand(True, 2)
		
		#panel.Sizer = gsz

		#vsz = dabo.ui.dSizer("v")
		#vsz.append(gsz, 1, "expand")
		return panel





if __name__ == "__main__":
	from FrmParts import FrmParts
	app = dabo.dApp(MainFormClass=None)
	app.setup()
	class TestForm(FrmParts):
		def afterInit(self): pass
	frm = TestForm(Caption="Test Of PagSelectParts", Testing=True)
	test = PagSelectParts(frm)
	test.createItems()
	frm.Sizer.append1x(test)
	frm.show()
	app.start()
