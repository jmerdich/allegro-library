import dabo

class ChkSelectOption(dabo.ui.dCheckBox):
	def initProperties(self):
		self.Alignment = "Right"
		self.SaveRestoreValue = True
            
	def onHit(self, evt):
		self.setEnabled()

	def setEnabled(self):
		ctrl = self.Control
		if ctrl:
			ctrl.Enabled = True

	def _getControl(self):
		return getattr(self, "_control", None)

	def _setControl(self, val):
		self._control = val
		self.setEnabled()

	Control = property(_getControl, _setControl)