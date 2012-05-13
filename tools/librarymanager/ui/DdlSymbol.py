# -*- coding: utf-8 -*-

import dabo
import wx

if __name__ == "__main__":
	dabo.ui.loadUI("wx")
	
class DdlSymbol(dabo.ui.dDropdownList):
	def __init__(self, parent, form):
		self.baseform = form
		dabo.ui.dDropdownList.__init__(self, parent)
		self.initProperties()
		self.ValueMode = "Key"
	def initProperties(self):
		self._needChoiceUpdate = True

	def updateChoices(self, key=""):
		self._needChoiceUpdate = False
		self.Choices, self.Keys = self.baseform.getSymbolChoicesAndKeys(key)
		
	def update(self):
		self.super()
		dabo.ui.callAfterInterval(200, self.doUpdate)

	def doUpdate(self):
		if self._needChoiceUpdate:
			self.updateChoices()
			
	def findIndex(self, string):
		self.updateChoices()
		for i in range(len(self.Choices)):
			if string == self.Choices[i]:
				return i
		return None				