# -*- coding: utf-8 -*-

import dabo
import wx
import dabo.ui
from dabo.dLocalize import _
import dabo.dEvents as dEvents

if __name__ == "__main__":
	dabo.ui.loadUI("wx")
	
class LCtrlPart(dabo.ui.dListControl):
	def __init__(self, parent):
		self.parent = parent
		dabo.ui.dListControl.__init__(self, parent)
		self.initProperties()
		self.ValueMode = "Key"
	def initProperties(self):
		self.bindEvent(dEvents.ListSelection, self.onRightClick)
		self._needChoiceUpdate = True
	def updateChoices(self):
		self._needChoiceUpdate = False
		self.setColumns(["footprint", "symbol", "library"])
		bizParts = self.Form.getBizobj()
		bizPart = bizParts.bizPart
		self.Keys = []
		self.removeAll()
		for rownum in bizPart.bizIterator():
			self.Keys.append(bizPart.Record.id)
			self.appendRows([[bizPart.Record.footprintname, bizPart.Record.symbolname, bizPart.Record.libraryname],])
	def update(self):
		self.super()
		dabo.ui.callAfterInterval(200, self.doUpdate)

	def doUpdate(self):
		#if self._needChoiceUpdate:
		self.updateChoices()
	
	def onRightClick(self, event):
		menu = dabo.ui.dMenu(self)
		self.fillContextMenu(menu)
		self.showContextMenu(menu)
		
	def onNewRecord(self, evt=None):
		self.parent.onAddFootprint(evt)
		self.doUpdate()
		
	def onEditRecord(self, evt=None):
		self.parent.onEditFootprint(self.Keys[self.LastSelectedIndex])
		self.doUpdate()
		
	def onDeleteRecord(self, evt=None):
		self.parent.Form.delFootprint(self.Keys[self.LastSelectedIndex])
		self.doUpdate()
		
	def fillContextMenu(self, menu):
		"""
		Display a context menu of relevant choices.

		By default, the choices are 'New', 'Edit', and 'Delete'.
		"""
		menu.append(_("&New"), OnHit=self.onNewRecord, bmp="blank",
					help=_("Add a new record"))
		menu.append(_("&Edit"), OnHit=self.onEditRecord, bmp="edit",
					help=_("Edit this record"))
		menu.append(_("&Delete"), OnHit=self.onDeleteRecord, bmp="delete",
					help=_("Delete this record"))
		return menu
			