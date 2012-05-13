# -*- coding: utf-8 -*-

import dabo
from dabo.dLocalize import _
from __version__ import version


class App(dabo.dApp):
	def initProperties(self):
		# Manages how preferences are saved
		self.BasePrefKey = "dabo.app.librarymanager"

		## The following information can be used in various places in your app:
		self.setAppInfo("appShortName", "Librarymanager")
		self.setAppInfo("appName", "Librarymanager")
		self.setAppInfo("copyright", "(c) 2008")
		self.setAppInfo("companyName", "Your company name")
		self.setAppInfo("companyAddress1", "Your company address")
		self.setAppInfo("companyAddress2", "Your company CSZ")
		self.setAppInfo("companyPhone", "Your company phone")
		self.setAppInfo("companyEmail", "Your company email")
		self.setAppInfo("companyUrl", "Your company url")

		self.setAppInfo("appDescription", _("Describe your app."))

		## Information about the developer of the software:
		self.setAppInfo("authorName", "Your name")
		self.setAppInfo("authorEmail", "Your email")
		self.setAppInfo("authorURL", "Your URL")

		## Set appVersion and appRevision from __version__.py:
		self.setAppInfo("appVersion", version["version"])
		self.setAppInfo("appRevision", version["revision"])

	def setup(self):
		if dabo.MDI:
			self.MainFormClass = self.ui.FrmMain
		else:
			# no need for main form in SDI mode:
			self.MainFormClass = None
		super(App, self).setup()
