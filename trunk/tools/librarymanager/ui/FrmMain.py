# -*- coding: utf-8 -*-

import dabo.ui
from MenFileOpen import MenFileOpen


class FrmMain(dabo.ui.dFormMain):

	def afterInit(self):
		super(FrmMain, self).afterInit()
		self.fillFileOpenMenu()


	def initProperties(self):
		super(FrmMain, self).initProperties()
		self.Icon = "daboIcon.ico"


	def fillFileOpenMenu(self):
		"""Add the File|Open menu, with menu items for opening each form."""
		app = self.Application
		fileMenu = self.MenuBar.getMenu("base_file")
		fileMenu.prependMenu(MenFileOpen(fileMenu))


