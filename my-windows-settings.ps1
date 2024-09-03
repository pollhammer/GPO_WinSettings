$tweaks = @(
	# Require administrator privileges

	"RequireAdmin",
	"CreateRestorePoint",
	"InstallFTTProgs",

	# Browsers 3rd Party Programs


	# Communications 3rd Party Programs


	# Development 3rd Party Programs


	# Document 3rd Party Programs


	# Games 3rd Party Programs


	# Microsoft Tools 3rd Party Programs


	# Multimedia Tools 3rd Party Programs


	# Pro Tools 3rd Party Programs


	# Utilities 3rd Party Programs


	# Windows Apps

	"UninstallMicrosoftEdge",
	"UninstallCortana",
	"UninstallMSNWeather",
	"UninstallGetHelp",
	"UninstallMicrosoftTips",
	"InstallHEIFImageExtensions",
	"UninstallPaint3D",
	"Uninstall3DViewer",
	"UninstallOffice",
	"UninstallMicrosoftSolitaireCollection",
	"UninstallMicrosoftStickyNotes",
	"UninstallMixedRealityPortal",
	"UninstallOneNote",
	"UninstallMicrosoftPeople",
	"UninstallSnipSketch",
	"UninstallSkype",
	"UninstallStoreExperienceHost",
	"UninstallMicrosoftPay",
	"UninstallFeedbackHub",
	"UninstallWindowsMaps",
	"UninstallXbox",
	"UninstallXboxTCUI",
	"UninstallXboxGameBarPlugin",
	"UninstallXboxGameBar",
	"UninstallXboxIdentityProvider",
	"UninstallXboxGameSpeechWindow",
	"UninstallPhoneLink",
	"UninstallGrooveMusic",
	"UninstallMoviesTV",
	"UninstallMailCalendar",
	"UninstallMicrosoftStore",

	# Privacy & Telemetry

	"DisableDiagTrackService",
	"MinimalDiagnosticDataLevel",
	"DisableErrorReporting",
	"NeverFeedbackFrequency",
	"DisableSigninInfo",
	"EnableLanguageListAccess",
	"HideWindowsWelcomeExperience",
	"DisableWindowsTips",
	"HideSettingsSuggestedContent",
	"DisableWhatsNewInWindows",
	"DisableTailoredExperiences",
	"DisableBingSearch",

	# UI & Personalization

	"ShowThisPC",
	"DisableCheckBoxes",
	"EnableHiddenItems",
	"ShowFileExtensions",
	"ThisPCOpenFileExplorerTo",
	"HideCortanaButton",
	"HideOneDriveFileExplorerAd",
	"DetailedFileTransferDialog",
	"ExpandedFileExplorerRibbon",
	"EnableRecycleBinDeleteConfirmation",
	"Hide3DObjects",
	"HideQuickAccessRecentFiles",
	"HidePeopleTaskbar",
	"HideWindowsInkWorkspace",
	"HideMeetNow",
	"DisableNewsInterests",
	"DisableFirstLogonAnimation",
	"MaxJPEGWallpapersQuality",
	"ExpandedTaskManagerWindow",
	"ShowRestartNotification",
	"DisableShortcutsSuffix",
	"EnablePrtScnSnippingTool",

	# OneDrive

	"UninstallOneDrive",

	# System

	"DisableHibernation",
	"HighPowerPlan",
	"DisableNetworkAdaptersSavePower",
	"EnableNumLock",
	"DisableStickyShift",

	# Start menu


	# UWP Apps

	"DisableCortanaAutostart",
	"DisableBackgroundUWPApps",

	# Gaming

	"DisableXboxGameBar",
	"DisableXboxGameTips",

	# Defender & Security


	# Context menu

	"EnableMultipleInvokeContext"

	# Other


)
#region Third

# Install winget
Function InstallFTTProgs {
	# Check if winget is installed
	if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
		Write-Output "Winget Already Installed."
	}  
	else{
		# Installing winget from the Microsoft Store
		Write-Output "Winget not found, installing it now."
		Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
		$nid = (Get-Process AppInstaller).Id
		Wait-Process -Id $nid
		Write-Output "Winget Installed"    
	}	
}

#region Third

# Install Brave
Function InstallBrave {
	Write-Output "Installing Brave"
	winget install -e --id Brave.Brave
}

# Uninstall Brave
Function UninstallBrave {
	Write-Output "Uninstalling Brave"
	winget uninstall -e --id Brave.Brave
}

# Install Chrome
Function InstallChrome {
	Write-Output "Installing Chrome"
	winget install -e --id Google.Chrome
}

# Uninstall Chrome
Function UninstallChrome {
	Write-Output "Uninstalling Chrome"
	winget uninstall -e --id Google.Chrome
}

# Install Chromium
Function InstallChromium {
	Write-Output "Installing Chromium"
	winget install -e --id Hibbiki.Chromium
}

# Uninstall Chromium
Function UninstallChromium {
	Write-Output "Uninstalling Chromium"
	winget uninstall -e --id Hibbiki.Chromium
}

# Install Edge
Function InstallEdge {
	Write-Output "Installing Edge"
	winget install -e --id Microsoft.Edge
}

# Uninstall Edge
Function UninstallEdge {
	Write-Output "Uninstalling Edge"
	winget uninstall -e --id Microsoft.Edge
}

# Install Falkon
Function InstallFalkon {
	Write-Output "Installing Falkon"
	winget install -e --id KDE.Falkon
}

# Uninstall Falkon
Function UninstallFalkon {
	Write-Output "Uninstalling Falkon"
	winget uninstall -e --id KDE.Falkon
}

# Install Firefox
Function InstallFirefox {
	Write-Output "Installing Firefox"
	winget install -e --id Mozilla.Firefox
}

# Uninstall Firefox
Function UninstallFirefox {
	Write-Output "Uninstalling Firefox"
	winget uninstall -e --id Mozilla.Firefox
}

# Install Floorp
Function InstallFloorp {
	Write-Output "Installing Floorp"
	winget install -e --id Ablaze.Floorp
}

# Uninstall Floorp
Function UninstallFloorp {
	Write-Output "Uninstalling Floorp"
	winget uninstall -e --id Ablaze.Floorp
}

# Install LibreWolf
Function InstallLibreWolf {
	Write-Output "Installing LibreWolf"
	winget install -e --id LibreWolf.LibreWolf
}

# Uninstall LibreWolf
Function UninstallLibreWolf {
	Write-Output "Uninstalling LibreWolf"
	winget uninstall -e --id LibreWolf.LibreWolf
}

# Install ThoriumAVX2
Function InstallThoriumAVX2 {
	Write-Output "Installing ThoriumAVX2"
	winget install -e --id Alex313031.Thorium.AVX2
}

# Uninstall ThoriumAVX2
Function UninstallThoriumAVX2 {
	Write-Output "Uninstalling ThoriumAVX2"
	winget uninstall -e --id Alex313031.Thorium.AVX2
}

# Install TorBrowser
Function InstallTorBrowser {
	Write-Output "Installing TorBrowser"
	winget install -e --id TorProject.TorBrowser
}

# Uninstall TorBrowser
Function UninstallTorBrowser {
	Write-Output "Uninstalling TorBrowser"
	winget uninstall -e --id TorProject.TorBrowser
}

# Install ungoogledchromium
Function Installungoogledchromium {
	Write-Output "Installing ungoogledchromium"
	winget install -e --id eloston.ungoogled-chromium
}

# Uninstall ungoogledchromium
Function Uninstallungoogledchromium {
	Write-Output "Uninstalling ungoogledchromium"
	winget uninstall -e --id eloston.ungoogled-chromium
}

# Install Vivaldi
Function InstallVivaldi {
	Write-Output "Installing Vivaldi"
	winget install -e --id VivaldiTechnologies.Vivaldi
}

# Uninstall Vivaldi
Function UninstallVivaldi {
	Write-Output "Uninstalling Vivaldi"
	winget uninstall -e --id VivaldiTechnologies.Vivaldi
}

# Install Waterfox
Function InstallWaterfox {
	Write-Output "Installing Waterfox"
	winget install -e --id Waterfox.Waterfox
}

# Uninstall Waterfox
Function UninstallWaterfox {
	Write-Output "Uninstalling Waterfox"
	winget uninstall -e --id Waterfox.Waterfox
}

# Install Chatterino
Function InstallChatterino {
	Write-Output "Installing Chatterino"
	winget install -e --id ChatterinoTeam.Chatterino
}

# Uninstall Chatterino
Function UninstallChatterino {
	Write-Output "Uninstalling Chatterino"
	winget uninstall -e --id ChatterinoTeam.Chatterino
}

# Install Drive
Function InstallDrive {
	Write-Output "Installing Drive"
	winget install -e --id Google.Drive
}

# Uninstall Drive
Function UninstallDrive {
	Write-Output "Uninstalling Drive"
	winget uninstall -e --id Google.Drive
}

# Install SyncTrayzor
Function InstallSyncTrayzor {
	Write-Output "Installing SyncTrayzor"
	winget install -e --id SyncTrayzor.SyncTrayzor
}

# Uninstall SyncTrayzor
Function UninstallSyncTrayzor {
	Write-Output "Uninstalling SyncTrayzor"
	winget uninstall -e --id SyncTrayzor.SyncTrayzor
}

# Install Authy
Function InstallAuthy {
	Write-Output "Installing Authy"
	winget install -e --id Twilio.Authy
}

# Uninstall Authy
Function UninstallAuthy {
	Write-Output "Uninstalling Authy"
	winget uninstall -e --id Twilio.Authy
}

# Install BleachBit
Function InstallBleachBit {
	Write-Output "Installing BleachBit"
	winget install -e --id BleachBit.BleachBit
}

# Uninstall BleachBit
Function UninstallBleachBit {
	Write-Output "Uninstalling BleachBit"
	winget uninstall -e --id BleachBit.BleachBit
}

# Install Espanso
Function InstallEspanso {
	Write-Output "Installing Espanso"
	winget install -e --id Espanso.Espanso
}

# Uninstall Espanso
Function UninstallEspanso {
	Write-Output "Uninstalling Espanso"
	winget uninstall -e --id Espanso.Espanso
}

# Install PDF24Creator
Function InstallPDF24Creator {
	Write-Output "Installing PDF24Creator"
	winget install -e --id geeksoftwareGmbH.PDF24Creator
}

# Uninstall PDF24Creator
Function UninstallPDF24Creator {
	Write-Output "Uninstalling PDF24Creator"
	winget uninstall -e --id geeksoftwareGmbH.PDF24Creator
}

# Install lazygit
Function Installlazygit {
	Write-Output "Installing lazygit"
	winget install -e --id JesseDuffield.lazygit
}

# Uninstall lazygit
Function Uninstalllazygit {
	Write-Output "Uninstalling lazygit"
	winget uninstall -e --id JesseDuffield.lazygit
}

# Install wezterm
Function Installwezterm {
	Write-Output "Installing wezterm"
	winget install -e --id wez.wezterm
}

# Uninstall wezterm
Function Uninstallwezterm {
	Write-Output "Uninstalling wezterm"
	winget uninstall -e --id wez.wezterm
}

# Install ripgrepMSVC
Function InstallripgrepMSVC {
	Write-Output "Installing ripgrepMSVC"
	winget install -e --id BurntSushi.ripgrep.MSVC
}

# Uninstall ripgrepMSVC
Function UninstallripgrepMSVC {
	Write-Output "Uninstalling ripgrepMSVC"
	winget uninstall -e --id BurntSushi.ripgrep.MSVC
}

# Install fzf
Function Installfzf {
	Write-Output "Installing fzf"
	winget install -e --id junegunn.fzf
}

# Uninstall fzf
Function Uninstallfzf {
	Write-Output "Uninstalling fzf"
	winget uninstall -e --id junegunn.fzf
}

# Install Discord
Function InstallDiscord {
	Write-Output "Installing Discord"
	winget install -e --id Discord.Discord
}

# Uninstall Discord
Function UninstallDiscord {
	Write-Output "Uninstalling Discord"
	winget uninstall -e --id Discord.Discord
}

# Install Ferdium
Function InstallFerdium {
	Write-Output "Installing Ferdium"
	winget install -e --id Ferdium.Ferdium
}

# Uninstall Ferdium
Function UninstallFerdium {
	Write-Output "Uninstalling Ferdium"
	winget uninstall -e --id Ferdium.Ferdium
}

# Install Guilded
Function InstallGuilded {
	Write-Output "Installing Guilded"
	winget install -e --id Guilded.Guilded
}

# Uninstall Guilded
Function UninstallGuilded {
	Write-Output "Uninstalling Guilded"
	winget uninstall -e --id Guilded.Guilded
}

# Install HexChat
Function InstallHexChat {
	Write-Output "Installing HexChat"
	winget install -e --id HexChat.HexChat
}

# Uninstall HexChat
Function UninstallHexChat {
	Write-Output "Uninstalling HexChat"
	winget uninstall -e --id HexChat.HexChat
}

# Install Jami
Function InstallJami {
	Write-Output "Installing Jami"
	winget install -e --id SFLinux.Jami
}

# Uninstall Jami
Function UninstallJami {
	Write-Output "Uninstalling Jami"
	winget uninstall -e --id SFLinux.Jami
}

# Install Linphone
Function InstallLinphone {
	Write-Output "Installing Linphone"
	winget install -e --id BelledonneCommunications.Linphone
}

# Uninstall Linphone
Function UninstallLinphone {
	Write-Output "Uninstalling Linphone"
	winget uninstall -e --id BelledonneCommunications.Linphone
}

# Install Element
Function InstallElement {
	Write-Output "Installing Element"
	winget install -e --id Element.Element
}

# Uninstall Element
Function UninstallElement {
	Write-Output "Uninstalling Element"
	winget uninstall -e --id Element.Element
}

# Install Session
Function InstallSession {
	Write-Output "Installing Session"
	winget install -e --id Oxen.Session
}

# Uninstall Session
Function UninstallSession {
	Write-Output "Uninstalling Session"
	winget uninstall -e --id Oxen.Session
}

# Install qTox
Function InstallqTox {
	Write-Output "Installing qTox"
	winget install -e --id Tox.qTox
}

# Uninstall qTox
Function UninstallqTox {
	Write-Output "Uninstalling qTox"
	winget uninstall -e --id Tox.qTox
}

# Install Signal
Function InstallSignal {
	Write-Output "Installing Signal"
	winget install -e --id OpenWhisperSystems.Signal
}

# Uninstall Signal
Function UninstallSignal {
	Write-Output "Uninstalling Signal"
	winget uninstall -e --id OpenWhisperSystems.Signal
}

# Install Skype
Function InstallSkype {
	Write-Output "Installing Skype"
	winget install -e --id Microsoft.Skype
}

# Uninstall Skype
Function UninstallSkype {
	Write-Output "Uninstalling Skype"
	winget uninstall -e --id Microsoft.Skype
}

# Install Slack
Function InstallSlack {
	Write-Output "Installing Slack"
	winget install -e --id SlackTechnologies.Slack
}

# Uninstall Slack
Function UninstallSlack {
	Write-Output "Uninstalling Slack"
	winget uninstall -e --id SlackTechnologies.Slack
}

# Install Teams
Function InstallTeams {
	Write-Output "Installing Teams"
	winget install -e --id Microsoft.Teams
}

# Uninstall Teams
Function UninstallTeams {
	Write-Output "Uninstalling Teams"
	winget uninstall -e --id Microsoft.Teams
}

# Install TelegramDesktop
Function InstallTelegramDesktop {
	Write-Output "Installing TelegramDesktop"
	winget install -e --id Telegram.TelegramDesktop
}

# Uninstall TelegramDesktop
Function UninstallTelegramDesktop {
	Write-Output "Uninstalling TelegramDesktop"
	winget uninstall -e --id Telegram.TelegramDesktop
}

# Install Thunderbird
Function InstallThunderbird {
	Write-Output "Installing Thunderbird"
	winget install -e --id Mozilla.Thunderbird
}

# Uninstall Thunderbird
Function UninstallThunderbird {
	Write-Output "Uninstalling Thunderbird"
	winget uninstall -e --id Mozilla.Thunderbird
}

# Install Viber
Function InstallViber {
	Write-Output "Installing Viber"
	winget install -e --id Viber.Viber
}

# Uninstall Viber
Function UninstallViber {
	Write-Output "Uninstalling Viber"
	winget uninstall -e --id Viber.Viber
}

# Install Zoom
Function InstallZoom {
	Write-Output "Installing Zoom"
	winget install -e --id Zoom.Zoom
}

# Uninstall Zoom
Function UninstallZoom {
	Write-Output "Uninstalling Zoom"
	winget uninstall -e --id Zoom.Zoom
}

# Install Zulip
Function InstallZulip {
	Write-Output "Installing Zulip"
	winget install -e --id Zulip.Zulip
}

# Uninstall Zulip
Function UninstallZulip {
	Write-Output "Uninstalling Zulip"
	winget uninstall -e --id Zulip.Zulip
}

# Install Zulu20JDK
Function InstallZulu20JDK {
	Write-Output "Installing Zulu20JDK"
	winget install -e --id Azul.Zulu.20.JDK
}

# Uninstall Zulu20JDK
Function UninstallZulu20JDK {
	Write-Output "Uninstalling Zulu20JDK"
	winget uninstall -e --id Azul.Zulu.20.JDK
}

# Install Zulu21JDK
Function InstallZulu21JDK {
	Write-Output "Installing Zulu21JDK"
	winget install -e --id Azul.Zulu.21.JDK
}

# Uninstall Zulu21JDK
Function UninstallZulu21JDK {
	Write-Output "Uninstalling Zulu21JDK"
	winget uninstall -e --id Azul.Zulu.21.JDK
}

# Install Clink
Function InstallClink {
	Write-Output "Installing Clink"
	winget install -e --id chrisant996.Clink
}

# Uninstall Clink
Function UninstallClink {
	Write-Output "Uninstalling Clink"
	winget uninstall -e --id chrisant996.Clink
}

# Install DockerDesktop
Function InstallDockerDesktop {
	Write-Output "Installing DockerDesktop"
	winget install -e --id Docker.DockerDesktop
}

# Uninstall DockerDesktop
Function UninstallDockerDesktop {
	Write-Output "Uninstalling DockerDesktop"
	winget uninstall -e --id Docker.DockerDesktop
}

# Install Git
Function InstallGit {
	Write-Output "Installing Git"
	winget install -e --id Git.Git
}

# Uninstall Git
Function UninstallGit {
	Write-Output "Uninstalling Git"
	winget uninstall -e --id Git.Git
}

# Install GitExtensionsTeamGitExtensions
Function InstallGitExtensions {
	Write-Output "Installing GitExtensions"
	winget install -e --id Git.Git;GitExtensionsTeam.GitExtensions
}

# Uninstall GitExtensionsTeamGitExtensions
Function UninstallGitExtensions {
	Write-Output "Uninstalling GitExtensions"
	winget uninstall -e --id Git.Git;GitExtensionsTeam.GitExtensions
}

# Install GitHubDesktop
Function InstallGitHubDesktop {
	Write-Output "Installing GitHubDesktop"
	winget install -e --id Git.Git;GitHub.GitHubDesktop
}

# Uninstall GitHubDesktop
Function UninstallGitHubDesktop {
	Write-Output "Uninstalling GitHubDesktop"
	winget uninstall -e --id Git.Git;GitHub.GitHubDesktop
}

# Install Go
Function InstallGo {
	Write-Output "Installing Go"
	winget install -e --id GoLang.Go
}

# Uninstall Go
Function UninstallGo {
	Write-Output "Uninstalling Go"
	winget uninstall -e --id GoLang.Go
}

# Install Toolbox
Function InstallToolbox {
	Write-Output "Installing Toolbox"
	winget install -e --id JetBrains.Toolbox
}

# Uninstall Toolbox
Function UninstallToolbox {
	Write-Output "Uninstalling Toolbox"
	winget uninstall -e --id JetBrains.Toolbox
}

# Install Nano
Function InstallNano {
	Write-Output "Installing Nano"
	winget install -e --id GNU.Nano
}

# Uninstall Nano
Function UninstallNano {
	Write-Output "Uninstalling Nano"
	winget uninstall -e --id GNU.Nano
}

# Install Neovim
Function InstallNeovim {
	Write-Output "Installing Neovim"
	winget install -e --id Neovim.Neovim
}

# Uninstall Neovim
Function UninstallNeovim {
	Write-Output "Uninstalling Neovim"
	winget uninstall -e --id Neovim.Neovim
}

# Install NodeJS
Function InstallNodeJS {
	Write-Output "Installing NodeJS"
	winget install -e --id OpenJS.NodeJS
}

# Uninstall NodeJS
Function UninstallNodeJS {
	Write-Output "Uninstalling NodeJS"
	winget uninstall -e --id OpenJS.NodeJS
}

# Install NodeJSLTS
Function InstallNodeJSLTS {
	Write-Output "Installing NodeJSLTS"
	winget install -e --id OpenJS.NodeJS.LTS
}

# Uninstall NodeJSLTS
Function UninstallNodeJSLTS {
	Write-Output "Uninstalling NodeJSLTS"
	winget uninstall -e --id OpenJS.NodeJS.LTS
}

# Install NVMforWindows
Function InstallNVMforWindows {
	Write-Output "Installing NVMforWindows"
	winget install -e --id CoreyButler.NVMforWindows
}

# Uninstall NVMforWindows
Function UninstallNVMforWindows {
	Write-Output "Uninstalling NVMforWindows"
	winget uninstall -e --id CoreyButler.NVMforWindows
}

# Install Temurin8JRE
Function InstallTemurin8JRE {
	Write-Output "Installing Temurin8JRE"
	winget install -e --id EclipseAdoptium.Temurin.8.JRE
}

# Uninstall Temurin8JRE
Function UninstallTemurin8JRE {
	Write-Output "Uninstalling Temurin8JRE"
	winget uninstall -e --id EclipseAdoptium.Temurin.8.JRE
}

# Install OpenJDK16
Function InstallOpenJDK16 {
	Write-Output "Installing OpenJDK16"
	winget install -e --id AdoptOpenJDK.OpenJDK.16
}

# Uninstall OpenJDK16
Function UninstallOpenJDK16 {
	Write-Output "Uninstalling OpenJDK16"
	winget uninstall -e --id AdoptOpenJDK.OpenJDK.16
}

# Install Temurin18JRE
Function InstallTemurin18JRE {
	Write-Output "Installing Temurin18JRE"
	winget install -e --id EclipseAdoptium.Temurin.18.JRE
}

# Uninstall Temurin18JRE
Function UninstallTemurin18JRE {
	Write-Output "Uninstalling Temurin18JRE"
	winget uninstall -e --id EclipseAdoptium.Temurin.18.JRE
}

# Install OhMyPosh
Function InstallOhMyPosh {
	Write-Output "Installing OhMyPosh"
	winget install -e --id JanDeDobbeleer.OhMyPosh
}

# Uninstall OhMyPosh
Function UninstallOhMyPosh {
	Write-Output "Uninstalling OhMyPosh"
	winget uninstall -e --id JanDeDobbeleer.OhMyPosh
}

# Install Python312
Function InstallPython312 {
	Write-Output "Installing Python312"
	winget install -e --id Python.Python.3.12
}

# Uninstall Python312
Function UninstallPython312 {
	Write-Output "Uninstalling Python312"
	winget uninstall -e --id Python.Python.3.12
}

# Install Postman
Function InstallPostman {
	Write-Output "Installing Postman"
	winget install -e --id Postman.Postman
}

# Uninstall Postman
Function UninstallPostman {
	Write-Output "Uninstalling Postman"
	winget uninstall -e --id Postman.Postman
}

# Install RustMSVC
Function InstallRustMSVC {
	Write-Output "Installing RustMSVC"
	winget install -e --id Rustlang.Rust.MSVC
}

# Uninstall RustMSVC
Function UninstallRustMSVC {
	Write-Output "Uninstalling RustMSVC"
	winget uninstall -e --id Rustlang.Rust.MSVC
}

# Install starship
Function Installstarship {
	Write-Output "Installing starship"
	winget install -e --id starship
}

# Uninstall starship
Function Uninstallstarship {
	Write-Output "Uninstalling starship"
	winget uninstall -e --id starship
}

# Install SublimeMerge
Function InstallSublimeMerge {
	Write-Output "Installing SublimeMerge"
	winget install -e --id SublimeHQ.SublimeMerge
}

# Uninstall SublimeMerge
Function UninstallSublimeMerge {
	Write-Output "Uninstalling SublimeMerge"
	winget uninstall -e --id SublimeHQ.SublimeMerge
}

# Install SublimeText4
Function InstallSublimeText4 {
	Write-Output "Installing SublimeText4"
	winget install -e --id SublimeHQ.SublimeText.4
}

# Uninstall SublimeText4
Function UninstallSublimeText4 {
	Write-Output "Uninstalling SublimeText4"
	winget uninstall -e --id SublimeHQ.SublimeText.4
}

# Install UnityHub
Function InstallUnityHub {
	Write-Output "Installing UnityHub"
	winget install -e --id Unity.UnityHub
}

# Uninstall UnityHub
Function UninstallUnityHub {
	Write-Output "Uninstalling UnityHub"
	winget uninstall -e --id Unity.UnityHub
}

# Install VisualStudio2022Community
Function InstallVisualStudio2022Community {
	Write-Output "Installing VisualStudio2022Community"
	winget install -e --id Microsoft.VisualStudio.2022.Community
}

# Uninstall VisualStudio2022Community
Function UninstallVisualStudio2022Community {
	Write-Output "Uninstalling VisualStudio2022Community"
	winget uninstall -e --id Microsoft.VisualStudio.2022.Community
}

# Install Vagrant
Function InstallVagrant {
	Write-Output "Installing Vagrant"
	winget install -e --id Hashicorp.Vagrant
}

# Uninstall Vagrant
Function UninstallVagrant {
	Write-Output "Uninstalling Vagrant"
	winget uninstall -e --id Hashicorp.Vagrant
}

# Install MicrosoftVisualStudioCode
Function InstallMicrosoftVisualStudioCode {
	Write-Output "Installing MicrosoftVisualStudioCode"
	winget install -e --id Git.Git;Microsoft.VisualStudioCode
}

# Uninstall MicrosoftVisualStudioCode
Function UninstallMicrosoftVisualStudioCode {
	Write-Output "Uninstalling MicrosoftVisualStudioCode"
	winget uninstall -e --id Git.Git;Microsoft.VisualStudioCode
}

# Install Anaconda3
Function InstallAnaconda3 {
	Write-Output "Installing Anaconda3"
	winget install -e --id Anaconda.Anaconda3
}

# Uninstall Anaconda3
Function UninstallAnaconda3 {
	Write-Output "Uninstalling Anaconda3"
	winget uninstall -e --id Anaconda.Anaconda3
}

# Install VSCodium
Function InstallVSCodium {
	Write-Output "Installing VSCodium"
	winget install -e --id Git.Git;VSCodium.VSCodium
}

# Uninstall VSCodium
Function UninstallVSCodium {
	Write-Output "Uninstalling VSCodium"
	winget uninstall -e --id Git.Git;VSCodium.VSCodium
}

# Install Yarn
Function InstallYarn {
	Write-Output "Installing Yarn"
	winget install -e --id Yarn.Yarn
}

# Uninstall Yarn
Function UninstallYarn {
	Write-Output "Uninstalling Yarn"
	winget uninstall -e --id Yarn.Yarn
}

# Install HxD
Function InstallHxD {
	Write-Output "Installing HxD"
	winget install -e --id MHNexus.HxD
}

# Uninstall HxD
Function UninstallHxD {
	Write-Output "Uninstalling HxD"
	winget uninstall -e --id MHNexus.HxD
}

# Install Anki
Function InstallAnki {
	Write-Output "Installing Anki"
	winget install -e --id Anki.Anki
}

# Uninstall Anki
Function UninstallAnki {
	Write-Output "Uninstalling Anki"
	winget uninstall -e --id Anki.Anki
}

# Install AcrobatReader64bit
Function InstallAcrobatReader64bit {
	Write-Output "Installing AcrobatReader64bit"
	winget install -e --id Adobe.Acrobat.Reader.64-bit
}

# Uninstall AcrobatReader64bit
Function UninstallAcrobatReader64bit {
	Write-Output "Uninstalling AcrobatReader64bit"
	winget uninstall -e --id Adobe.Acrobat.Reader.64-bit
}

# Install OpenOffice
Function InstallOpenOffice {
	Write-Output "Installing OpenOffice"
	winget install -e --id Apache.OpenOffice
}

# Uninstall OpenOffice
Function UninstallOpenOffice {
	Write-Output "Uninstalling OpenOffice"
	winget uninstall -e --id Apache.OpenOffice
}

# Install calibre
Function Installcalibre {
	Write-Output "Installing calibre"
	winget install -e --id calibre.calibre
}

# Uninstall calibre
Function Uninstallcalibre {
	Write-Output "Uninstalling calibre"
	winget uninstall -e --id calibre.calibre
}

# Install PhantomPDF
Function InstallPhantomPDF {
	Write-Output "Installing PhantomPDF"
	winget install -e --id Foxit.PhantomPDF
}

# Uninstall PhantomPDF
Function UninstallPhantomPDF {
	Write-Output "Uninstalling PhantomPDF"
	winget uninstall -e --id Foxit.PhantomPDF
}

# Install Joplin
Function InstallJoplin {
	Write-Output "Installing Joplin"
	winget install -e --id Joplin.Joplin
}

# Uninstall Joplin
Function UninstallJoplin {
	Write-Output "Uninstalling Joplin"
	winget uninstall -e --id Joplin.Joplin
}

# Install LibreOffice
Function InstallLibreOffice {
	Write-Output "Installing LibreOffice"
	winget install -e --id TheDocumentFoundation.LibreOffice
}

# Uninstall LibreOffice
Function UninstallLibreOffice {
	Write-Output "Uninstalling LibreOffice"
	winget uninstall -e --id TheDocumentFoundation.LibreOffice
}

# Install massCode
Function InstallmassCode {
	Write-Output "Installing massCode"
	winget install -e --id antonreshetov.massCode
}

# Uninstall massCode
Function UninstallmassCode {
	Write-Output "Uninstalling massCode"
	winget uninstall -e --id antonreshetov.massCode
}

# Install NAPS2
Function InstallNAPS2 {
	Write-Output "Installing NAPS2"
	winget install -e --id Cyanfish.NAPS2
}

# Uninstall NAPS2
Function UninstallNAPS2 {
	Write-Output "Uninstalling NAPS2"
	winget uninstall -e --id Cyanfish.NAPS2
}

# Install Notepad++
Function InstallNotepadplusplus {
	Write-Output "Installing Notepad++"
	winget install -e --id Notepad++.Notepad++
}

# Uninstall Notepad++
Function UninstallNotepadplusplus {
	Write-Output "Uninstalling Notepad++"
	winget uninstall -e --id Notepad++.Notepad++
}

# Install Logseq
Function InstallLogseq {
	Write-Output "Installing Logseq"
	winget install -e --id Logseq.Logseq
}

# Uninstall Logseq
Function UninstallLogseq {
	Write-Output "Uninstalling Logseq"
	winget uninstall -e --id Logseq.Logseq
}

# Install Obsidian
Function InstallObsidian {
	Write-Output "Installing Obsidian"
	winget install -e --id Obsidian.Obsidian
}

# Uninstall Obsidian
Function UninstallObsidian {
	Write-Output "Uninstalling Obsidian"
	winget uninstall -e --id Obsidian.Obsidian
}

# Install Okular
Function InstallOkular {
	Write-Output "Installing Okular"
	winget install -e --id KDE.Okular
}

# Uninstall Okular
Function UninstallOkular {
	Write-Output "Uninstalling Okular"
	winget uninstall -e --id KDE.Okular
}

# Install DesktopEditors
Function InstallDesktopEditors {
	Write-Output "Installing DesktopEditors"
	winget install -e --id ONLYOFFICE.DesktopEditors
}

# Uninstall DesktopEditors
Function UninstallDesktopEditors {
	Write-Output "Uninstalling DesktopEditors"
	winget uninstall -e --id ONLYOFFICE.DesktopEditors
}

# Install PDFsam
Function InstallPDFsam {
	Write-Output "Installing PDFsam"
	winget install -e --id PDFsam.PDFsam
}

# Uninstall PDFsam
Function UninstallPDFsam {
	Write-Output "Uninstalling PDFsam"
	winget uninstall -e --id PDFsam.PDFsam
}

# Install SumatraPDF
Function InstallSumatraPDF {
	Write-Output "Installing SumatraPDF"
	winget install -e --id SumatraPDF.SumatraPDF
}

# Uninstall SumatraPDF
Function UninstallSumatraPDF {
	Write-Output "Uninstalling SumatraPDF"
	winget uninstall -e --id SumatraPDF.SumatraPDF
}

# Install WinMerge
Function InstallWinMerge {
	Write-Output "Installing WinMerge"
	winget install -e --id WinMerge.WinMerge
}

# Uninstall WinMerge
Function UninstallWinMerge {
	Write-Output "Uninstalling WinMerge"
	winget uninstall -e --id WinMerge.WinMerge
}

# Install Xournal++
Function InstallXournalplusplus {
	Write-Output "Installing Xournal++"
	winget install -e --id Xournal++.Xournal++
}

# Uninstall Xournal++
Function UninstallXournalplusplus {
	Write-Output "Uninstalling Xournal++"
	winget uninstall -e --id Xournal++.Xournal++
}

# Install Zim
Function InstallZim {
	Write-Output "Installing Zim"
	winget install -e --id Zimwiki.Zim
}

# Uninstall Zim
Function UninstallZim {
	Write-Output "Uninstalling Zim"
	winget uninstall -e --id Zimwiki.Zim
}

# Install znote
Function Installznote {
	Write-Output "Installing znote"
	winget install -e --id alagrede.znote
}

# Uninstall znote
Function Uninstallznote {
	Write-Output "Uninstalling znote"
	winget uninstall -e --id alagrede.znote
}

# Install Zotero
Function InstallZotero {
	Write-Output "Installing Zotero"
	winget install -e --id DigitalScholar.Zotero
}

# Uninstall Zotero
Function UninstallZotero {
	Write-Output "Uninstalling Zotero"
	winget uninstall -e --id DigitalScholar.Zotero
}

# Install BlueStacks
Function InstallBlueStacks {
	Write-Output "Installing BlueStacks"
	winget install -e --id BlueStack.BlueStacks
}

# Uninstall BlueStacks
Function UninstallBlueStacks {
	Write-Output "Uninstalling BlueStacks"
	winget uninstall -e --id BlueStack.BlueStacks
}

# Install Cemu
Function InstallCemu {
	Write-Output "Installing Cemu"
	winget install -e --id Cemu.Cemu
}

# Uninstall Cemu
Function UninstallCemu {
	Write-Output "Uninstalling Cemu"
	winget uninstall -e --id Cemu.Cemu
}

# Install CloneHero
Function InstallCloneHero {
	Write-Output "Installing CloneHero"
	winget install -e --id CloneHeroTeam.CloneHero
}

# Uninstall CloneHero
Function UninstallCloneHero {
	Write-Output "Uninstalling CloneHero"
	winget uninstall -e --id CloneHeroTeam.CloneHero
}

# Install EADesktop
Function InstallEADesktop {
	Write-Output "Installing EADesktop"
	winget install -e --id ElectronicArts.EADesktop
}

# Uninstall EADesktop
Function UninstallEADesktop {
	Write-Output "Uninstalling EADesktop"
	winget uninstall -e --id ElectronicArts.EADesktop
}

# Install Emulationstation
Function InstallEmulationstation {
	Write-Output "Installing Emulationstation"
	winget install -e --id Emulationstation.Emulationstation
}

# Uninstall Emulationstation
Function UninstallEmulationstation {
	Write-Output "Uninstalling Emulationstation"
	winget uninstall -e --id Emulationstation.Emulationstation
}

# Install EpicGamesLauncher
Function InstallEpicGamesLauncher {
	Write-Output "Installing EpicGamesLauncher"
	winget install -e --id EpicGames.EpicGamesLauncher
}

# Uninstall EpicGamesLauncher
Function UninstallEpicGamesLauncher {
	Write-Output "Uninstalling EpicGamesLauncher"
	winget uninstall -e --id EpicGames.EpicGamesLauncher
}

# Install GeForceNow
Function InstallGeForceNow {
	Write-Output "Installing GeForceNow"
	winget install -e --id Nvidia.GeForceNow
}

# Uninstall GeForceNow
Function UninstallGeForceNow {
	Write-Output "Uninstalling GeForceNow"
	winget uninstall -e --id Nvidia.GeForceNow
}

# Install Galaxy
Function InstallGalaxy {
	Write-Output "Installing Galaxy"
	winget install -e --id GOG.Galaxy
}

# Uninstall Galaxy
Function UninstallGalaxy {
	Write-Output "Uninstalling Galaxy"
	winget uninstall -e --id GOG.Galaxy
}

# Install HeroicGamesLauncher
Function InstallHeroicGamesLauncher {
	Write-Output "Installing HeroicGamesLauncher"
	winget install -e --id HeroicGamesLauncher.HeroicGamesLauncher
}

# Uninstall HeroicGamesLauncher
Function UninstallHeroicGamesLauncher {
	Write-Output "Uninstalling HeroicGamesLauncher"
	winget uninstall -e --id HeroicGamesLauncher.HeroicGamesLauncher
}

# Install Itch
Function InstallItch {
	Write-Output "Installing Itch"
	winget install -e --id ItchIo.Itch
}

# Uninstall Itch
Function UninstallItch {
	Write-Output "Uninstalling Itch"
	winget uninstall -e --id ItchIo.Itch
}

# Install Moonlight
Function InstallMoonlight {
	Write-Output "Installing Moonlight"
	winget install -e --id MoonlightGameStreamingProject.Moonlight
}

# Uninstall Moonlight
Function UninstallMoonlight {
	Write-Output "Uninstalling Moonlight"
	winget uninstall -e --id MoonlightGameStreamingProject.Moonlight
}

# Install Playnite
Function InstallPlaynite {
	Write-Output "Installing Playnite"
	winget install -e --id Playnite.Playnite
}

# Uninstall Playnite
Function UninstallPlaynite {
	Write-Output "Uninstalling Playnite"
	winget uninstall -e --id Playnite.Playnite
}

# Install PrismLauncher
Function InstallPrismLauncher {
	Write-Output "Installing PrismLauncher"
	winget install -e --id PrismLauncher.PrismLauncher
}

# Uninstall PrismLauncher
Function UninstallPrismLauncher {
	Write-Output "Uninstalling PrismLauncher"
	winget uninstall -e --id PrismLauncher.PrismLauncher
}

# Install SideQuest
Function InstallSideQuest {
	Write-Output "Installing SideQuest"
	winget install -e --id SideQuestVR.SideQuest
}

# Uninstall SideQuest
Function UninstallSideQuest {
	Write-Output "Uninstalling SideQuest"
	winget uninstall -e --id SideQuestVR.SideQuest
}

# Install Steam
Function InstallSteam {
	Write-Output "Installing Steam"
	winget install -e --id Valve.Steam
}

# Uninstall Steam
Function UninstallSteam {
	Write-Output "Uninstalling Steam"
	winget uninstall -e --id Valve.Steam
}

# Install Sunshine
Function InstallSunshine {
	Write-Output "Installing Sunshine"
	winget install -e --id LizardByte.Sunshine
}

# Uninstall Sunshine
Function UninstallSunshine {
	Write-Output "Uninstalling Sunshine"
	winget uninstall -e --id LizardByte.Sunshine
}

# Install Connect
Function InstallConnect {
	Write-Output "Installing Connect"
	winget install -e --id Ubisoft.Connect
}

# Uninstall Connect
Function UninstallConnect {
	Write-Output "Uninstalling Connect"
	winget uninstall -e --id Ubisoft.Connect
}

# Install xemu
Function Installxemu {
	Write-Output "Installing xemu"
	winget install -e --id xemu-project.xemu
}

# Uninstall xemu
Function Uninstallxemu {
	Write-Output "Uninstalling xemu"
	winget uninstall -e --id xemu-project.xemu
}

# Install PSRemotePlay
Function InstallPSRemotePlay {
	Write-Output "Installing PSRemotePlay"
	winget install -e --id PlayStation.PSRemotePlay
}

# Uninstall PSRemotePlay
Function UninstallPSRemotePlay {
	Write-Output "Uninstalling PSRemotePlay"
	winget uninstall -e --id PlayStation.PSRemotePlay
}

# Install Streamer
Function InstallStreamer {
	Write-Output "Installing Streamer"
	winget install -e --id VirtualDesktop.Streamer
}

# Uninstall Streamer
Function UninstallStreamer {
	Write-Output "Uninstalling Streamer"
	winget uninstall -e --id VirtualDesktop.Streamer
}

# Install DotNetDesktopRuntime31
Function InstallDotNetDesktopRuntime31 {
	Write-Output "Installing DotNetDesktopRuntime31"
	winget install -e --id Microsoft.DotNet.DesktopRuntime.3_1
}

# Uninstall DotNetDesktopRuntime31
Function UninstallDotNetDesktopRuntime31 {
	Write-Output "Uninstalling DotNetDesktopRuntime31"
	winget uninstall -e --id Microsoft.DotNet.DesktopRuntime.3_1
}

# Install DotNetDesktopRuntime5
Function InstallDotNetDesktopRuntime5 {
	Write-Output "Installing DotNetDesktopRuntime5"
	winget install -e --id Microsoft.DotNet.DesktopRuntime.5
}

# Uninstall DotNetDesktopRuntime5
Function UninstallDotNetDesktopRuntime5 {
	Write-Output "Uninstalling DotNetDesktopRuntime5"
	winget uninstall -e --id Microsoft.DotNet.DesktopRuntime.5
}

# Install DotNetDesktopRuntime6
Function InstallDotNetDesktopRuntime6 {
	Write-Output "Installing DotNetDesktopRuntime6"
	winget install -e --id Microsoft.DotNet.DesktopRuntime.6
}

# Uninstall DotNetDesktopRuntime6
Function UninstallDotNetDesktopRuntime6 {
	Write-Output "Uninstalling DotNetDesktopRuntime6"
	winget uninstall -e --id Microsoft.DotNet.DesktopRuntime.6
}

# Install DotNetDesktopRuntime7
Function InstallDotNetDesktopRuntime7 {
	Write-Output "Installing DotNetDesktopRuntime7"
	winget install -e --id Microsoft.DotNet.DesktopRuntime.7
}

# Uninstall DotNetDesktopRuntime7
Function UninstallDotNetDesktopRuntime7 {
	Write-Output "Uninstalling DotNetDesktopRuntime7"
	winget uninstall -e --id Microsoft.DotNet.DesktopRuntime.7
}

# Install DotNetDesktopRuntime8
Function InstallDotNetDesktopRuntime8 {
	Write-Output "Installing DotNetDesktopRuntime8"
	winget install -e --id Microsoft.DotNet.DesktopRuntime.8
}

# Uninstall DotNetDesktopRuntime8
Function UninstallDotNetDesktopRuntime8 {
	Write-Output "Uninstalling DotNetDesktopRuntime8"
	winget uninstall -e --id Microsoft.DotNet.DesktopRuntime.8
}

# Install NuGet
Function InstallNuGet {
	Write-Output "Installing NuGet"
	winget install -e --id Microsoft.NuGet
}

# Uninstall NuGet
Function UninstallNuGet {
	Write-Output "Uninstalling NuGet"
	winget uninstall -e --id Microsoft.NuGet
}

# Install OneDrive
Function InstallOneDrive {
	Write-Output "Installing OneDrive"
	winget install -e --id Microsoft.OneDrive
}

# Uninstall OneDrive
Function UninstallOneDrive {
	Write-Output "Uninstalling OneDrive"
	winget uninstall -e --id Microsoft.OneDrive
}

# Install PowerShell
Function InstallPowerShell {
	Write-Output "Installing PowerShell"
	winget install -e --id Microsoft.PowerShell
}

# Uninstall PowerShell
Function UninstallPowerShell {
	Write-Output "Uninstalling PowerShell"
	winget uninstall -e --id Microsoft.PowerShell
}

# Install PowerToys
Function InstallPowerToys {
	Write-Output "Installing PowerToys"
	winget install -e --id Microsoft.PowerToys
}

# Uninstall PowerToys
Function UninstallPowerToys {
	Write-Output "Uninstalling PowerToys"
	winget uninstall -e --id Microsoft.PowerToys
}

# Install SysinternalsProcessMonitor
Function InstallSysinternalsProcessMonitor {
	Write-Output "Installing SysinternalsProcessMonitor"
	winget install -e --id Microsoft.Sysinternals.ProcessMonitor
}

# Uninstall SysinternalsProcessMonitor
Function UninstallSysinternalsProcessMonitor {
	Write-Output "Uninstalling SysinternalsProcessMonitor"
	winget uninstall -e --id Microsoft.Sysinternals.ProcessMonitor
}

# Install SysinternalsTCPView
Function InstallSysinternalsTCPView {
	Write-Output "Installing SysinternalsTCPView"
	winget install -e --id Microsoft.Sysinternals.TCPView
}

# Uninstall SysinternalsTCPView
Function UninstallSysinternalsTCPView {
	Write-Output "Uninstalling SysinternalsTCPView"
	winget uninstall -e --id Microsoft.Sysinternals.TCPView
}

# Install VCRedist2015x64
Function InstallVCRedist2015plusx64 {
	Write-Output "Installing VCRedist2015+x64"
	winget install -e --id Microsoft.VCRedist.2015+.x64
}

# Uninstall VCRedist2015+x64
Function UninstallVCRedist2015plusx64 {
	Write-Output "Uninstalling VCRedist2015+x64"
	winget uninstall -e --id Microsoft.VCRedist.2015+.x64
}

# Install VCRedist2015+x86
Function InstallVCRedist2015plusx86 {
	Write-Output "Installing VCRedist2015+x86"
	winget install -e --id Microsoft.VCRedist.2015+.x86
}

# Uninstall VCRedist2015+x86
Function UninstallVCRedist2015plusx86 {
	Write-Output "Uninstalling VCRedist2015+x86"
	winget uninstall -e --id Microsoft.VCRedist.2015+.x86
}

# Install WindowsTerminal
Function InstallWindowsTerminal {
	Write-Output "Installing WindowsTerminal"
	winget install -e --id Microsoft.WindowsTerminal
}

# Uninstall WindowsTerminal
Function UninstallWindowsTerminal {
	Write-Output "Uninstalling WindowsTerminal"
	winget uninstall -e --id Microsoft.WindowsTerminal
}

# Install PowerBI
Function InstallPowerBI {
	Write-Output "Installing PowerBI"
	winget install -e --id Microsoft.PowerBI
}

# Uninstall PowerBI
Function UninstallPowerBI {
	Write-Output "Uninstalling PowerBI"
	winget uninstall -e --id Microsoft.PowerBI
}

# Install AIMP
Function InstallAIMP {
	Write-Output "Installing AIMP"
	winget install -e --id AIMP.AIMP
}

# Uninstall AIMP
Function UninstallAIMP {
	Write-Output "Uninstalling AIMP"
	winget uninstall -e --id AIMP.AIMP
}

# Install Audacity
Function InstallAudacity {
	Write-Output "Installing Audacity"
	winget install -e --id Audacity.Audacity
}

# Uninstall Audacity
Function UninstallAudacity {
	Write-Output "Uninstalling Audacity"
	winget uninstall -e --id Audacity.Audacity
}

# Install Blender
Function InstallBlender {
	Write-Output "Installing Blender"
	winget install -e --id BlenderFoundation.Blender
}

# Uninstall Blender
Function UninstallBlender {
	Write-Output "Uninstalling Blender"
	winget uninstall -e --id BlenderFoundation.Blender
}

# Install Clementine
Function InstallClementine {
	Write-Output "Installing Clementine"
	winget install -e --id Clementine.Clementine
}

# Uninstall Clementine
Function UninstallClementine {
	Write-Output "Uninstalling Clementine"
	winget uninstall -e --id Clementine.Clementine
}

# Install ytdlp
Function Installytdlp {
	Write-Output "Installing ytdlp"
	winget install -e --id yt-dlp.yt-dlp
}

# Uninstall ytdlp
Function Uninstallytdlp {
	Write-Output "Uninstalling ytdlp"
	winget uninstall -e --id yt-dlp.yt-dlp
}

# Install Videomass
Function InstallVideomass {
	Write-Output "Installing Videomass"
	winget install -e --id GianlucaPernigotto.Videomass
}

# Uninstall Videomass
Function UninstallVideomass {
	Write-Output "Uninstalling Videomass"
	winget uninstall -e --id GianlucaPernigotto.Videomass
}

# Install FFmpeg
Function InstallFFmpeg {
	Write-Output "Installing FFmpeg"
	winget install -e --id Gyan.FFmpeg
}

# Uninstall FFmpeg
Function UninstallFFmpeg {
	Write-Output "Uninstalling FFmpeg"
	winget uninstall -e --id Gyan.FFmpeg
}

# Install CopyQ
Function InstallCopyQ {
	Write-Output "Installing CopyQ"
	winget install -e --id hluk.CopyQ
}

# Uninstall CopyQ
Function UninstallCopyQ {
	Write-Output "Uninstalling CopyQ"
	winget uninstall -e --id hluk.CopyQ
}

# Install digikam
Function Installdigikam {
	Write-Output "Installing digikam"
	winget install -e --id KDE.digikam
}

# Uninstall digikam
Function Uninstalldigikam {
	Write-Output "Uninstalling digikam"
	winget uninstall -e --id KDE.digikam
}

# Install EarTrumpet
Function InstallEarTrumpet {
	Write-Output "Installing EarTrumpet"
	winget install -e --id File-New-Project.EarTrumpet
}

# Uninstall EarTrumpet
Function UninstallEarTrumpet {
	Write-Output "Uninstalling EarTrumpet"
	winget uninstall -e --id File-New-Project.EarTrumpet
}

# Install FreeCAD
Function InstallFreeCAD {
	Write-Output "Installing FreeCAD"
	winget install -e --id FreeCAD.FreeCAD
}

# Uninstall FreeCAD
Function UninstallFreeCAD {
	Write-Output "Uninstalling FreeCAD"
	winget uninstall -e --id FreeCAD.FreeCAD
}

# Install FireAlpaca
Function InstallFireAlpaca {
	Write-Output "Installing FireAlpaca"
	winget install -e --id FireAlpaca.FireAlpaca
}

# Uninstall FireAlpaca
Function UninstallFireAlpaca {
	Write-Output "Uninstalling FireAlpaca"
	winget uninstall -e --id FireAlpaca.FireAlpaca
}

# Install Flameshot
Function InstallFlameshot {
	Write-Output "Installing Flameshot"
	winget install -e --id Flameshot.Flameshot
}

# Uninstall Flameshot
Function UninstallFlameshot {
	Write-Output "Uninstalling Flameshot"
	winget uninstall -e --id Flameshot.Flameshot
}

# Install foobar2000
Function Installfoobar2000 {
	Write-Output "Installing foobar2000"
	winget install -e --id PeterPawlowski.foobar2000
}

# Uninstall foobar2000
Function Uninstallfoobar2000 {
	Write-Output "Uninstalling foobar2000"
	winget uninstall -e --id PeterPawlowski.foobar2000
}

# Install GIMP
Function InstallGIMP {
	Write-Output "Installing GIMP"
	winget install -e --id GIMP.GIMP
}

# Uninstall GIMP
Function UninstallGIMP {
	Write-Output "Uninstalling GIMP"
	winget uninstall -e --id GIMP.GIMP
}

# Install Greenshot
Function InstallGreenshot {
	Write-Output "Installing Greenshot"
	winget install -e --id Greenshot.Greenshot
}

# Uninstall Greenshot
Function UninstallGreenshot {
	Write-Output "Uninstalling Greenshot"
	winget uninstall -e --id Greenshot.Greenshot
}

# Install HandBrake
Function InstallHandBrake {
	Write-Output "Installing HandBrake"
	winget install -e --id HandBrake.HandBrake
}

# Uninstall HandBrake
Function UninstallHandBrake {
	Write-Output "Uninstalling HandBrake"
	winget uninstall -e --id HandBrake.HandBrake
}

# Install ImageGlass
Function InstallImageGlass {
	Write-Output "Installing ImageGlass"
	winget install -e --id DuongDieuPhap.ImageGlass
}

# Uninstall ImageGlass
Function UninstallImageGlass {
	Write-Output "Uninstalling ImageGlass"
	winget uninstall -e --id DuongDieuPhap.ImageGlass
}

# Install ImgBurn
Function InstallImgBurn {
	Write-Output "Installing ImgBurn"
	winget install -e --id LIGHTNINGUK.ImgBurn
}

# Uninstall ImgBurn
Function UninstallImgBurn {
	Write-Output "Uninstalling ImgBurn"
	winget uninstall -e --id LIGHTNINGUK.ImgBurn
}

# Install Inkscape
Function InstallInkscape {
	Write-Output "Installing Inkscape"
	winget install -e --id Inkscape.Inkscape
}

# Uninstall Inkscape
Function UninstallInkscape {
	Write-Output "Uninstalling Inkscape"
	winget uninstall -e --id Inkscape.Inkscape
}

# Install iTunes
Function InstalliTunes {
	Write-Output "Installing iTunes"
	winget install -e --id Apple.iTunes
}

# Uninstall iTunes
Function UninstalliTunes {
	Write-Output "Uninstalling iTunes"
	winget uninstall -e --id Apple.iTunes
}

# Install JellyfinMediaPlayer
Function InstallJellyfinMediaPlayer {
	Write-Output "Installing JellyfinMediaPlayer"
	winget install -e --id Jellyfin.JellyfinMediaPlayer
}

# Uninstall JellyfinMediaPlayer
Function UninstallJellyfinMediaPlayer {
	Write-Output "Uninstalling JellyfinMediaPlayer"
	winget uninstall -e --id Jellyfin.JellyfinMediaPlayer
}

# Install Server
Function InstallServer {
	Write-Output "Installing Server"
	winget install -e --id Jellyfin.Server
}

# Uninstall Server
Function UninstallServer {
	Write-Output "Uninstalling Server"
	winget uninstall -e --id Jellyfin.Server
}

# Install Kdenlive
Function InstallKdenlive {
	Write-Output "Installing Kdenlive"
	winget install -e --id KDE.Kdenlive
}

# Uninstall Kdenlive
Function UninstallKdenlive {
	Write-Output "Uninstalling Kdenlive"
	winget uninstall -e --id KDE.Kdenlive
}

# Install Kodi
Function InstallKodi {
	Write-Output "Installing Kodi"
	winget install -e --id XBMCFoundation.Kodi
}

# Uninstall Kodi
Function UninstallKodi {
	Write-Output "Uninstalling Kodi"
	winget uninstall -e --id XBMCFoundation.Kodi
}

# Install KLiteCodecPackStandard
Function InstallKLiteCodecPackStandard {
	Write-Output "Installing KLiteCodecPackStandard"
	winget install -e --id CodecGuide.K-LiteCodecPack.Standard
}

# Uninstall KLiteCodecPackStandard
Function UninstallKLiteCodecPackStandard {
	Write-Output "Uninstalling KLiteCodecPackStandard"
	winget uninstall -e --id CodecGuide.K-LiteCodecPack.Standard
}

# Install Krita
Function InstallKrita {
	Write-Output "Installing Krita"
	winget install -e --id KDE.Krita
}

# Uninstall Krita
Function UninstallKrita {
	Write-Output "Uninstalling Krita"
	winget uninstall -e --id KDE.Krita
}

# Install MusicBee
Function InstallMusicBee {
	Write-Output "Installing MusicBee"
	winget install -e --id MusicBee.MusicBee
}

# Uninstall MusicBee
Function UninstallMusicBee {
	Write-Output "Uninstalling MusicBee"
	winget uninstall -e --id MusicBee.MusicBee
}

# Install mpchc
Function Installmpchc {
	Write-Output "Installing mpchc"
	winget install -e --id clsid2.mpc-hc
}

# Uninstall mpchc
Function Uninstallmpchc {
	Write-Output "Uninstalling mpchc"
	winget uninstall -e --id clsid2.mpc-hc
}

# Install nGlide
Function InstallnGlide {
	Write-Output "Installing nGlide"
	winget install -e --id ZeusSoftware.nGlide
}

# Uninstall nGlide
Function UninstallnGlide {
	Write-Output "Uninstalling nGlide"
	winget uninstall -e --id ZeusSoftware.nGlide
}

# Install nomacs
Function Installnomacs {
	Write-Output "Installing nomacs"
	winget install -e --id nomacs.nomacs
}

# Uninstall nomacs
Function Uninstallnomacs {
	Write-Output "Uninstalling nomacs"
	winget uninstall -e --id nomacs.nomacs
}

# Install darktable
Function Installdarktable {
	Write-Output "Installing darktable"
	winget install -e --id darktable.darktable
}

# Uninstall darktable
Function Uninstalldarktable {
	Write-Output "Uninstalling darktable"
	winget uninstall -e --id darktable.darktable
}

# Install OBSStudio
Function InstallOBSStudio {
	Write-Output "Installing OBSStudio"
	winget install -e --id OBSProject.OBSStudio
}

# Uninstall OBSStudio
Function UninstallOBSStudio {
	Write-Output "Uninstalling OBSStudio"
	winget uninstall -e --id OBSProject.OBSStudio
}

# Install paintdotnet
Function Installpaintdotnet {
	Write-Output "Installing paintdotnet"
	winget install -e --id dotPDNLLC.paintdotnet
}

# Uninstall paintdotnet
Function Uninstallpaintdotnet {
	Write-Output "Uninstalling paintdotnet"
	winget uninstall -e --id dotPDNLLC.paintdotnet
}

# Install OpenSCAD
Function InstallOpenSCAD {
	Write-Output "Installing OpenSCAD"
	winget install -e --id OpenSCAD.OpenSCAD
}

# Uninstall OpenSCAD
Function UninstallOpenSCAD {
	Write-Output "Uninstalling OpenSCAD"
	winget uninstall -e --id OpenSCAD.OpenSCAD
}

# Install ShareX
Function InstallShareX {
	Write-Output "Installing ShareX"
	winget install -e --id ShareX.ShareX
}

# Uninstall ShareX
Function UninstallShareX {
	Write-Output "Uninstalling ShareX"
	winget uninstall -e --id ShareX.ShareX
}

# Install Strawberry
Function InstallStrawberry {
	Write-Output "Installing Strawberry"
	winget install -e --id StrawberryMusicPlayer.Strawberry
}

# Uninstall Strawberry
Function UninstallStrawberry {
	Write-Output "Uninstalling Strawberry"
	winget uninstall -e --id StrawberryMusicPlayer.Strawberry
}

# Install Tidal
Function InstallTidal {
	Write-Output "Installing Tidal"
	winget install -e --id 9NNCB5BS59PH
}

# Uninstall Tidal
Function UninstallTidal {
	Write-Output "Uninstalling Tidal"
	winget uninstall -e --id 9NNCB5BS59PH
}

# Install VLC
Function InstallVLC {
	Write-Output "Installing VLC"
	winget install -e --id VideoLAN.VLC
}

# Uninstall VLC
Function UninstallVLC {
	Write-Output "Uninstalling VLC"
	winget uninstall -e --id VideoLAN.VLC
}

# Install Voicemeeter
Function InstallVoicemeeter {
	Write-Output "Installing Voicemeeter"
	winget install -e --id VB-Audio.Voicemeeter
}

# Uninstall Voicemeeter
Function UninstallVoicemeeter {
	Write-Output "Uninstalling Voicemeeter"
	winget uninstall -e --id VB-Audio.Voicemeeter
}

# Install PlexMediaServer
Function InstallPlexMediaServer {
	Write-Output "Installing PlexMediaServer"
	winget install -e --id Plex.PlexMediaServer
}

# Uninstall PlexMediaServer
Function UninstallPlexMediaServer {
	Write-Output "Uninstalling PlexMediaServer"
	winget uninstall -e --id Plex.PlexMediaServer
}

# Install AdvancedIPScanner
Function InstallAdvancedIPScanner {
	Write-Output "Installing AdvancedIPScanner"
	winget install -e --id Famatech.AdvancedIPScanner
}

# Uninstall AdvancedIPScanner
Function UninstallAdvancedIPScanner {
	Write-Output "Uninstalling AdvancedIPScanner"
	winget uninstall -e --id Famatech.AdvancedIPScanner
}

# Install AngryIPScanner
Function InstallAngryIPScanner {
	Write-Output "Installing AngryIPScanner"
	winget install -e --id angryziber.AngryIPScanner
}

# Uninstall AngryIPScanner
Function UninstallAngryIPScanner {
	Write-Output "Uninstalling AngryIPScanner"
	winget uninstall -e --id angryziber.AngryIPScanner
}

# Install EFIBootEditor
Function InstallEFIBootEditor {
	Write-Output "Installing EFIBootEditor"
	winget install -e --id EFIBootEditor.EFIBootEditor
}

# Uninstall EFIBootEditor
Function UninstallEFIBootEditor {
	Write-Output "Uninstalling EFIBootEditor"
	winget uninstall -e --id EFIBootEditor.EFIBootEditor
}

# Install HeidiSQL
Function InstallHeidiSQL {
	Write-Output "Installing HeidiSQL"
	winget install -e --id HeidiSQL.HeidiSQL
}

# Uninstall HeidiSQL
Function UninstallHeidiSQL {
	Write-Output "Uninstalling HeidiSQL"
	winget uninstall -e --id HeidiSQL.HeidiSQL
}

# Install mRemoteNG
Function InstallmRemoteNG {
	Write-Output "Installing mRemoteNG"
	winget install -e --id mRemoteNG.mRemoteNG
}

# Uninstall mRemoteNG
Function UninstallmRemoteNG {
	Write-Output "Uninstalling mRemoteNG"
	winget uninstall -e --id mRemoteNG.mRemoteNG
}

# Install Nmap
Function InstallNmap {
	Write-Output "Installing Nmap"
	winget install -e --id Insecure.Nmap
}

# Uninstall Nmap
Function UninstallNmap {
	Write-Output "Uninstalling Nmap"
	winget uninstall -e --id Insecure.Nmap
}

# Install OpenVPNConnect
Function InstallOpenVPNConnect {
	Write-Output "Installing OpenVPNConnect"
	winget install -e --id OpenVPNTechnologies.OpenVPNConnect
}

# Uninstall OpenVPNConnect
Function UninstallOpenVPNConnect {
	Write-Output "Uninstalling OpenVPNConnect"
	winget uninstall -e --id OpenVPNTechnologies.OpenVPNConnect
}

# Install portmaster
Function Installportmaster {
	Write-Output "Installing portmaster"
	winget install -e --id portmaster
}

# Uninstall portmaster
Function Uninstallportmaster {
	Write-Output "Uninstalling portmaster"
	winget uninstall -e --id portmaster
}

# Install PuTTY
Function InstallPuTTY {
	Write-Output "Installing PuTTY"
	winget install -e --id PuTTY.PuTTY
}

# Uninstall PuTTY
Function UninstallPuTTY {
	Write-Output "Uninstalling PuTTY"
	winget uninstall -e --id PuTTY.PuTTY
}

# Install RustDesk
Function InstallRustDesk {
	Write-Output "Installing RustDesk"
	winget install -e --id RustDesk.RustDesk
}

# Uninstall RustDesk
Function UninstallRustDesk {
	Write-Output "Uninstalling RustDesk"
	winget uninstall -e --id RustDesk.RustDesk
}

# Install simplewall
Function Installsimplewall {
	Write-Output "Installing simplewall"
	winget install -e --id Henry++.simplewall
}

# Uninstall simplewall
Function Uninstallsimplewall {
	Write-Output "Uninstalling simplewall"
	winget uninstall -e --id Henry++.simplewall
}

# Install Ventoy
Function InstallVentoy {
	Write-Output "Installing Ventoy"
	winget install -e --id Ventoy.Ventoy
}

# Uninstall Ventoy
Function UninstallVentoy {
	Write-Output "Uninstalling Ventoy"
	winget uninstall -e --id Ventoy.Ventoy
}

# Install WinSCP
Function InstallWinSCP {
	Write-Output "Installing WinSCP"
	winget install -e --id WinSCP.WinSCP
}

# Uninstall WinSCP
Function UninstallWinSCP {
	Write-Output "Uninstalling WinSCP"
	winget uninstall -e --id WinSCP.WinSCP
}

# Install WireGuard
Function InstallWireGuard {
	Write-Output "Installing WireGuard"
	winget install -e --id WireGuard.WireGuard
}

# Uninstall WireGuard
Function UninstallWireGuard {
	Write-Output "Uninstalling WireGuard"
	winget uninstall -e --id WireGuard.WireGuard
}

# Install Wireshark
Function InstallWireshark {
	Write-Output "Installing Wireshark"
	winget install -e --id WiresharkFoundation.Wireshark
}

# Uninstall Wireshark
Function UninstallWireshark {
	Write-Output "Uninstalling Wireshark"
	winget uninstall -e --id WiresharkFoundation.Wireshark
}

# Install xpipe
Function Installxpipe {
	Write-Output "Installing xpipe"
	winget install -e --id xpipe-io.xpipe
}

# Uninstall xpipe
Function Uninstallxpipe {
	Write-Output "Uninstalling xpipe"
	winget uninstall -e --id xpipe-io.xpipe
}

# Install 7zip
Function Install7zip {
	Write-Output "Installing 7zip"
	winget install -e --id 7zip.7zip
}

# Uninstall 7zip
Function Uninstall7zip {
	Write-Output "Uninstalling 7zip"
	winget uninstall -e --id 7zip.7zip
}

# Install Alacritty
Function InstallAlacritty {
	Write-Output "Installing Alacritty"
	winget install -e --id Alacritty.Alacritty
}

# Uninstall Alacritty
Function UninstallAlacritty {
	Write-Output "Uninstalling Alacritty"
	winget uninstall -e --id Alacritty.Alacritty
}

# Install AnyDesk
Function InstallAnyDesk {
	Write-Output "Installing AnyDesk"
	winget install -e --id AnyDeskSoftwareGmbH.AnyDesk
}

# Uninstall AnyDesk
Function UninstallAnyDesk {
	Write-Output "Uninstalling AnyDesk"
	winget uninstall -e --id AnyDeskSoftwareGmbH.AnyDesk
}

# Install AutoHotkey
Function InstallAutoHotkey {
	Write-Output "Installing AutoHotkey"
	winget install -e --id AutoHotkey.AutoHotkey
}

# Uninstall AutoHotkey
Function UninstallAutoHotkey {
	Write-Output "Uninstalling AutoHotkey"
	winget uninstall -e --id AutoHotkey.AutoHotkey
}

# Install Barrier
Function InstallBarrier {
	Write-Output "Installing Barrier"
	winget install -e --id DebaucheeOpenSourceGroup.Barrier
}

# Uninstall Barrier
Function UninstallBarrier {
	Write-Output "Uninstalling Barrier"
	winget uninstall -e --id DebaucheeOpenSourceGroup.Barrier
}

# Install bat
Function Installbat {
	Write-Output "Installing bat"
	winget install -e --id sharkdp.bat
}

# Uninstall bat
Function Uninstallbat {
	Write-Output "Uninstalling bat"
	winget uninstall -e --id sharkdp.bat
}

# Install Bitwarden
Function InstallBitwarden {
	Write-Output "Installing Bitwarden"
	winget install -e --id Bitwarden.Bitwarden
}

# Uninstall Bitwarden
Function UninstallBitwarden {
	Write-Output "Uninstalling Bitwarden"
	winget uninstall -e --id Bitwarden.Bitwarden
}

# Install BulkCrapUninstaller
Function InstallBulkCrapUninstaller {
	Write-Output "Installing BulkCrapUninstaller"
	winget install -e --id Klocman.BulkCrapUninstaller
}

# Uninstall BulkCrapUninstaller
Function UninstallBulkCrapUninstaller {
	Write-Output "Uninstalling BulkCrapUninstaller"
	winget uninstall -e --id Klocman.BulkCrapUninstaller
}

# Install Carnac
Function InstallCarnac {
	Write-Output "Installing Carnac"
	winget install -e --id code52.Carnac
}

# Uninstall Carnac
Function UninstallCarnac {
	Write-Output "Uninstalling Carnac"
	winget uninstall -e --id code52.Carnac
}

# Install CPUZ
Function InstallCPUZ {
	Write-Output "Installing CPUZ"
	winget install -e --id CPUID.CPU-Z
}

# Uninstall CPUZ
Function UninstallCPUZ {
	Write-Output "Uninstalling CPUZ"
	winget uninstall -e --id CPUID.CPU-Z
}

# Install CrystalDiskInfo
Function InstallCrystalDiskInfo {
	Write-Output "Installing CrystalDiskInfo"
	winget install -e --id CrystalDewWorld.CrystalDiskInfo
}

# Uninstall CrystalDiskInfo
Function UninstallCrystalDiskInfo {
	Write-Output "Uninstalling CrystalDiskInfo"
	winget uninstall -e --id CrystalDewWorld.CrystalDiskInfo
}

# Install CrystalDiskMark
Function InstallCrystalDiskMark {
	Write-Output "Installing CrystalDiskMark"
	winget install -e --id CrystalDewWorld.CrystalDiskMark
}

# Uninstall CrystalDiskMark
Function UninstallCrystalDiskMark {
	Write-Output "Uninstalling CrystalDiskMark"
	winget uninstall -e --id CrystalDewWorld.CrystalDiskMark
}

# Install ddu
Function Installddu {
	Write-Output "Installing ddu"
	winget install -e --id ddu
}

# Uninstall ddu
Function Uninstallddu {
	Write-Output "Uninstalling ddu"
	winget uninstall -e --id ddu
}

# Install Deluge
Function InstallDeluge {
	Write-Output "Installing Deluge"
	winget install -e --id DelugeTeam.Deluge
}

# Uninstall Deluge
Function UninstallDeluge {
	Write-Output "Uninstalling Deluge"
	winget uninstall -e --id DelugeTeam.Deluge
}

# Install Dolphin
Function InstallDolphin {
	Write-Output "Installing Dolphin"
	winget install -e --id KDE.Dolphin
}

# Uninstall Dolphin
Function UninstallDolphin {
	Write-Output "Uninstalling Dolphin"
	winget uninstall -e --id KDE.Dolphin
}

# Install Duplicati
Function InstallDuplicati {
	Write-Output "Installing Duplicati"
	winget install -e --id Duplicati.Duplicati
}

# Uninstall Duplicati
Function UninstallDuplicati {
	Write-Output "Uninstalling Duplicati"
	winget uninstall -e --id Duplicati.Duplicati
}

# Install devtoys
Function Installdevtoys {
	Write-Output "Installing devtoys"
	winget install -e --id devtoys
}

# Uninstall devtoys
Function Uninstalldevtoys {
	Write-Output "Uninstalling devtoys"
	winget uninstall -e --id devtoys
}

# Install ErrorLookup
Function InstallErrorLookup {
	Write-Output "Installing ErrorLookup"
	winget install -e --id Henry++.ErrorLookup
}

# Uninstall ErrorLookup
Function UninstallErrorLookup {
	Write-Output "Uninstalling ErrorLookup"
	winget uninstall -e --id Henry++.ErrorLookup
}

# Install Etcher
Function InstallEtcher {
	Write-Output "Installing Etcher"
	winget install -e --id Balena.Etcher
}

# Uninstall Etcher
Function UninstallEtcher {
	Write-Output "Uninstalling Etcher"
	winget uninstall -e --id Balena.Etcher
}

# Install Everything
Function InstallEverything {
	Write-Output "Installing Everything"
	winget install -e --id voidtools.Everything
}

# Uninstall Everything
Function UninstallEverything {
	Write-Output "Uninstalling Everything"
	winget uninstall -e --id voidtools.Everything
}

# Install FileConverter
Function InstallFileConverter {
	Write-Output "Installing FileConverter"
	winget install -e --id AdrienAllard.FileConverter
}

# Uninstall FileConverter
Function UninstallFileConverter {
	Write-Output "Uninstalling FileConverter"
	winget uninstall -e --id AdrienAllard.FileConverter
}

# Install flux
Function Installflux {
	Write-Output "Installing flux"
	winget install -e --id flux.flux
}

# Uninstall flux
Function Uninstallflux {
	Write-Output "Uninstalling flux"
	winget uninstall -e --id flux.flux
}

# Install GlaryUtilities
Function InstallGlaryUtilities {
	Write-Output "Installing GlaryUtilities"
	winget install -e --id Glarysoft.GlaryUtilities
}

# Uninstall GlaryUtilities
Function UninstallGlaryUtilities {
	Write-Output "Uninstalling GlaryUtilities"
	winget uninstall -e --id Glarysoft.GlaryUtilities
}

# Install GPUZ
Function InstallGPUZ {
	Write-Output "Installing GPUZ"
	winget install -e --id TechPowerUp.GPU-Z
}

# Uninstall GPUZ
Function UninstallGPUZ {
	Write-Output "Uninstalling GPUZ"
	winget uninstall -e --id TechPowerUp.GPU-Z
}

# Install gsudo
Function Installgsudo {
	Write-Output "Installing gsudo"
	winget install -e --id gerardog.gsudo
}

# Uninstall gsudo
Function Uninstallgsudo {
	Write-Output "Uninstalling gsudo"
	winget uninstall -e --id gerardog.gsudo
}

# Install HWiNFO
Function InstallHWiNFO {
	Write-Output "Installing HWiNFO"
	winget install -e --id REALiX.HWiNFO
}

# Uninstall HWiNFO
Function UninstallHWiNFO {
	Write-Output "Uninstalling HWiNFO"
	winget uninstall -e --id REALiX.HWiNFO
}

# Install JDownloader
Function InstallJDownloader {
	Write-Output "Installing JDownloader"
	winget install -e --id AppWork.JDownloader
}

# Uninstall JDownloader
Function UninstallJDownloader {
	Write-Output "Uninstalling JDownloader"
	winget uninstall -e --id AppWork.JDownloader
}

# Install KDEConnect
Function InstallKDEConnect {
	Write-Output "Installing KDEConnect"
	winget install -e --id KDE.KDEConnect
}

# Uninstall KDEConnect
Function UninstallKDEConnect {
	Write-Output "Uninstalling KDEConnect"
	winget uninstall -e --id KDE.KDEConnect
}

# Install KeePassXC
Function InstallKeePassXC {
	Write-Output "Installing KeePassXC"
	winget install -e --id KeePassXCTeam.KeePassXC
}

# Uninstall KeePassXC
Function UninstallKeePassXC {
	Write-Output "Uninstalling KeePassXC"
	winget uninstall -e --id KeePassXCTeam.KeePassXC
}

# Install Malwarebytes
Function InstallMalwarebytes {
	Write-Output "Installing Malwarebytes"
	winget install -e --id Malwarebytes.Malwarebytes
}

# Uninstall Malwarebytes
Function UninstallMalwarebytes {
	Write-Output "Uninstalling Malwarebytes"
	winget uninstall -e --id Malwarebytes.Malwarebytes
}

# Install Meld
Function InstallMeld {
	Write-Output "Installing Meld"
	winget install -e --id Meld.Meld
}

# Uninstall Meld
Function UninstallMeld {
	Write-Output "Uninstalling Meld"
	winget uninstall -e --id Meld.Meld
}

# Install Monitorian
Function InstallMonitorian {
	Write-Output "Installing Monitorian"
	winget install -e --id emoacht.Monitorian
}

# Uninstall Monitorian
Function UninstallMonitorian {
	Write-Output "Uninstalling Monitorian"
	winget uninstall -e --id emoacht.Monitorian
}

# Install Afterburner
Function InstallAfterburner {
	Write-Output "Installing Afterburner"
	winget install -e --id Guru3D.Afterburner
}

# Uninstall Afterburner
Function UninstallAfterburner {
	Write-Output "Uninstalling Afterburner"
	winget uninstall -e --id Guru3D.Afterburner
}

# Install NanaZip
Function InstallNanaZip {
	Write-Output "Installing NanaZip"
	winget install -e --id M2Team.NanaZip
}

# Uninstall NanaZip
Function UninstallNanaZip {
	Write-Output "Uninstalling NanaZip"
	winget uninstall -e --id M2Team.NanaZip
}

# Install neofetchwin
Function Installneofetchwin {
	Write-Output "Installing neofetchwin"
	winget install -e --id nepnep.neofetch-win
}

# Uninstall neofetchwin
Function Uninstallneofetchwin {
	Write-Output "Uninstalling neofetchwin"
	winget uninstall -e --id nepnep.neofetch-win
}

# Install NextcloudDesktop
Function InstallNextcloudDesktop {
	Write-Output "Installing NextcloudDesktop"
	winget install -e --id Nextcloud.NextcloudDesktop
}

# Uninstall NextcloudDesktop
Function UninstallNextcloudDesktop {
	Write-Output "Uninstalling NextcloudDesktop"
	winget uninstall -e --id Nextcloud.NextcloudDesktop
}

# Install Nushell
Function InstallNushell {
	Write-Output "Installing Nushell"
	winget install -e --id Nushell.Nushell
}

# Uninstall Nushell
Function UninstallNushell {
	Write-Output "Uninstalling Nushell"
	winget uninstall -e --id Nushell.Nushell
}

# Install NVCleanstall
Function InstallNVCleanstall {
	Write-Output "Installing NVCleanstall"
	winget install -e --id TechPowerUp.NVCleanstall
}

# Uninstall NVCleanstall
Function UninstallNVCleanstall {
	Write-Output "Uninstalling NVCleanstall"
	winget uninstall -e --id TechPowerUp.NVCleanstall
}

# Install VirtualBox
Function InstallVirtualBox {
	Write-Output "Installing VirtualBox"
	winget install -e --id Oracle.VirtualBox
}

# Uninstall VirtualBox
Function UninstallVirtualBox {
	Write-Output "Uninstalling VirtualBox"
	winget uninstall -e --id Oracle.VirtualBox
}

# Install OpenRGB
Function InstallOpenRGB {
	Write-Output "Installing OpenRGB"
	winget install -e --id CalcProgrammer1.OpenRGB
}

# Uninstall OpenRGB
Function UninstallOpenRGB {
	Write-Output "Uninstalling OpenRGB"
	winget uninstall -e --id CalcProgrammer1.OpenRGB
}

# Install OpenShellMenu
Function InstallOpenShellMenu {
	Write-Output "Installing OpenShellMenu"
	winget install -e --id Open-Shell.Open-Shell-Menu
}

# Uninstall OpenShellMenu
Function UninstallOpenShellMenu {
	Write-Output "Uninstalling OpenShellMenu"
	winget uninstall -e --id Open-Shell.Open-Shell-Menu
}

# Install ownCloudDesktop
Function InstallownCloudDesktop {
	Write-Output "Installing ownCloudDesktop"
	winget install -e --id ownCloud.ownCloudDesktop
}

# Uninstall ownCloudDesktop
Function UninstallownCloudDesktop {
	Write-Output "Uninstalling ownCloudDesktop"
	winget uninstall -e --id ownCloud.ownCloudDesktop
}

# Install parsec
Function Installparsec {
	Write-Output "Installing parsec"
	winget install -e --id Parsec.parsec
}

# Uninstall parsec
Function Uninstallparsec {
	Write-Output "Uninstalling parsec"
	winget uninstall -e --id Parsec.parsec
}

# Install Peazip
Function InstallPeazip {
	Write-Output "Installing Peazip"
	winget install -e --id Giorgiotani.Peazip
}

# Uninstall Peazip
Function UninstallPeazip {
	Write-Output "Uninstalling Peazip"
	winget uninstall -e --id Giorgiotani.Peazip
}

# Install ProcessLasso
Function InstallProcessLasso {
	Write-Output "Installing ProcessLasso"
	winget install -e --id BitSum.ProcessLasso
}

# Uninstall ProcessLasso
Function UninstallProcessLasso {
	Write-Output "Uninstalling ProcessLasso"
	winget uninstall -e --id BitSum.ProcessLasso
}

# Install PrusaSlicer
Function InstallPrusaSlicer {
	Write-Output "Installing PrusaSlicer"
	winget install -e --id Prusa3d.PrusaSlicer
}

# Uninstall PrusaSlicer
Function UninstallPrusaSlicer {
	Write-Output "Uninstalling PrusaSlicer"
	winget uninstall -e --id Prusa3d.PrusaSlicer
}

# Install qBittorrent
Function InstallqBittorrent {
	Write-Output "Installing qBittorrent"
	winget install -e --id qBittorrent.qBittorrent
}

# Uninstall qBittorrent
Function UninstallqBittorrent {
	Write-Output "Uninstalling qBittorrent"
	winget uninstall -e --id qBittorrent.qBittorrent
}

# Install Rainmeter
Function InstallRainmeter {
	Write-Output "Installing Rainmeter"
	winget install -e --id Rainmeter.Rainmeter
}

# Uninstall Rainmeter
Function UninstallRainmeter {
	Write-Output "Uninstalling Rainmeter"
	winget uninstall -e --id Rainmeter.Rainmeter
}

# Install RevoUninstaller
Function InstallRevoUninstaller {
	Write-Output "Installing RevoUninstaller"
	winget install -e --id RevoUninstaller.RevoUninstaller
}

# Uninstall RevoUninstaller
Function UninstallRevoUninstaller {
	Write-Output "Uninstalling RevoUninstaller"
	winget uninstall -e --id RevoUninstaller.RevoUninstaller
}

# Install Rufus
Function InstallRufus {
	Write-Output "Installing Rufus"
	winget install -e --id Rufus.Rufus
}

# Uninstall Rufus
Function UninstallRufus {
	Write-Output "Uninstalling Rufus"
	winget uninstall -e --id Rufus.Rufus
}

# Install Plus
Function InstallPlus {
	Write-Output "Installing Plus"
	winget install -e --id Sandboxie.Plus
}

# Uninstall Plus
Function UninstallPlus {
	Write-Output "Uninstalling Plus"
	winget uninstall -e --id Sandboxie.Plus
}

# Install Shell
Function InstallShell {
	Write-Output "Installing Shell"
	winget install -e --id Nilesoft.Shell
}

# Uninstall Shell
Function UninstallShell {
	Write-Output "Uninstalling Shell"
	winget uninstall -e --id Nilesoft.Shell
}

# Install SnappyDriverInstallerOrigin
Function InstallSnappyDriverInstallerOrigin {
	Write-Output "Installing SnappyDriverInstallerOrigin"
	winget install -e --id GlennDelahoy.SnappyDriverInstallerOrigin
}

# Uninstall SnappyDriverInstallerOrigin
Function UninstallSnappyDriverInstallerOrigin {
	Write-Output "Uninstalling SnappyDriverInstallerOrigin"
	winget uninstall -e --id GlennDelahoy.SnappyDriverInstallerOrigin
}

# Install Spacedrive
Function InstallSpacedrive {
	Write-Output "Installing Spacedrive"
	winget install -e --id spacedrive.Spacedrive
}

# Uninstall Spacedrive
Function UninstallSpacedrive {
	Write-Output "Uninstalling Spacedrive"
	winget uninstall -e --id spacedrive.Spacedrive
}

# Install Superf4
Function InstallSuperf4 {
	Write-Output "Installing Superf4"
	winget install -e --id StefanSundin.Superf4
}

# Uninstall Superf4
Function UninstallSuperf4 {
	Write-Output "Uninstalling Superf4"
	winget uninstall -e --id StefanSundin.Superf4
}

# Install tailscale
Function Installtailscale {
	Write-Output "Installing tailscale"
	winget install -e --id tailscale.tailscale
}

# Uninstall tailscale
Function Uninstalltailscale {
	Write-Output "Uninstalling tailscale"
	winget uninstall -e --id tailscale.tailscale
}

# Install TeamViewer
Function InstallTeamViewer {
	Write-Output "Installing TeamViewer"
	winget install -e --id TeamViewer.TeamViewer
}

# Uninstall TeamViewer
Function UninstallTeamViewer {
	Write-Output "Uninstalling TeamViewer"
	winget uninstall -e --id TeamViewer.TeamViewer
}

# Install TranslucentTaskbar
Function InstallTranslucentTaskbar {
	Write-Output "Installing TranslucentTaskbar"
	winget install -e --id 9PF4KZ2VN4W9
}

# Uninstall TranslucentTaskbar
Function UninstallTranslucentTaskbar {
	Write-Output "Uninstalling TranslucentTaskbar"
	winget uninstall -e --id 9PF4KZ2VN4W9
}

# Install TreeSizeFree
Function InstallTreeSizeFree {
	Write-Output "Installing TreeSizeFree"
	winget install -e --id JAMSoftware.TreeSize.Free
}

# Uninstall TreeSizeFree
Function UninstallTreeSizeFree {
	Write-Output "Uninstalling TreeSizeFree"
	winget uninstall -e --id JAMSoftware.TreeSize.Free
}

# Install twinkletray
Function Installtwinkletray {
	Write-Output "Installing twinkletray"
	winget install -e --id xanderfrangos.twinkletray
}

# Uninstall twinkletray
Function Uninstalltwinkletray {
	Write-Output "Uninstalling twinkletray"
	winget uninstall -e --id xanderfrangos.twinkletray
}

# Install WinDirStat
Function InstallWinDirStat {
	Write-Output "Installing WinDirStat"
	winget install -e --id WinDirStat.WinDirStat
}

# Uninstall WinDirStat
Function UninstallWinDirStat {
	Write-Output "Uninstalling WinDirStat"
	winget uninstall -e --id WinDirStat.WinDirStat
}

# Install WingetUIStore
Function InstallWingetUIStore {
	Write-Output "Installing WingetUIStore"
	winget install -e --id SomePythonThings.WingetUIStore
}

# Uninstall WingetUIStore
Function UninstallWingetUIStore {
	Write-Output "Uninstalling WingetUIStore"
	winget uninstall -e --id SomePythonThings.WingetUIStore
}

# Install WizTree
Function InstallWizTree {
	Write-Output "Installing WizTree"
	winget install -e --id AntibodySoftware.WizTree
}

# Uninstall WizTree
Function UninstallWizTree {
	Write-Output "Uninstalling WizTree"
	winget uninstall -e --id AntibodySoftware.WizTree
}

# Install WinRAR
Function InstallWinRAR {
	Write-Output "Installing WinRAR"
	winget install -e --id RARLab.WinRAR
}

# Uninstall WinRAR
Function UninstallWinRAR {
	Write-Output "Uninstalling WinRAR"
	winget uninstall -e --id RARLab.WinRAR
}

# Install WinPaletter
Function InstallWinPaletter {
	Write-Output "Installing WinPaletter"
	winget install -e --id Abdelrhman-AK.WinPaletter
}

# Uninstall WinPaletter
Function UninstallWinPaletter {
	Write-Output "Uninstalling WinPaletter"
	winget uninstall -e --id Abdelrhman-AK.WinPaletter
}

# Install WiseToys
Function InstallWiseToys {
	Write-Output "Installing WiseToys"
	winget install -e --id WiseCleaner.WiseToys
}

# Uninstall WiseToys
Function UninstallWiseToys {
	Write-Output "Uninstalling WiseToys"
	winget uninstall -e --id WiseCleaner.WiseToys
}

# Install XtremeDownloadManager
Function InstallXtremeDownloadManager {
	Write-Output "Installing XtremeDownloadManager"
	winget install -e --id subhra74.XtremeDownloadManager
}

# Uninstall XtremeDownloadManager
Function UninstallXtremeDownloadManager {
	Write-Output "Uninstalling XtremeDownloadManager"
	winget uninstall -e --id subhra74.XtremeDownloadManager
}

# Install ZeroTierOne
Function InstallZeroTierOne {
	Write-Output "Installing ZeroTierOne"
	winget install -e --id ZeroTier.ZeroTierOne
}

# Uninstall ZeroTierOne
Function UninstallZeroTierOne {
	Write-Output "Uninstalling ZeroTierOne"
	winget uninstall -e --id ZeroTier.ZeroTierOne
}

# Install zoxide
Function Installzoxide {
	Write-Output "Installing zoxide"
	winget install -e --id ajeetdsouza.zoxide
}

# Uninstall zoxide
Function Uninstallzoxide {
	Write-Output "Uninstalling zoxide"
	winget uninstall -e --id ajeetdsouza.zoxide
}

# Install WindowsPCHealthCheck
Function InstallWindowsPCHealthCheck {
	Write-Output "Installing WindowsPCHealthCheck"
	winget install -e --id Microsoft.WindowsPCHealthCheck
}

# Uninstall WindowsPCHealthCheck
Function UninstallWindowsPCHealthCheck {
	Write-Output "Uninstalling WindowsPCHealthCheck"
	winget uninstall -e --id Microsoft.WindowsPCHealthCheck
}

# Install SamsungMagician
Function InstallSamsungMagician {
	Write-Output "Installing SamsungMagician"
	winget install -e --id Samsung.SamsungMagician
}

# Uninstall SamsungMagician
Function UninstallSamsungMagician {
	Write-Output "Uninstalling SamsungMagician"
	winget uninstall -e --id Samsung.SamsungMagician
}

# Install BitComet
Function InstallBitComet {
	Write-Output "Installing BitComet"
	winget install -e --id CometNetwork.BitComet
}

# Uninstall BitComet
Function UninstallBitComet {
	Write-Output "Uninstalling BitComet"
	winget uninstall -e --id CometNetwork.BitComet
}

# Install RaspberryPiImager
Function InstallRaspberryPiImager {
	Write-Output "Installing RaspberryPiImager"
	winget install -e --id RaspberryPiFoundation.RaspberryPiImager
}

# Uninstall RaspberryPiImager
Function UninstallRaspberryPiImager {
	Write-Output "Uninstalling RaspberryPiImager"
	winget uninstall -e --id RaspberryPiFoundation.RaspberryPiImager
}

# Install 1Password
Function Install1Password {
	Write-Output "Installing 1Password"
	winget install -e --id AgileBits.1Password
}

# Uninstall 1Password
Function Uninstall1Password {
	Write-Output "Uninstalling 1Password"
	winget uninstall -e --id AgileBits.1Password
}

# Install TotalCommander
Function InstallTotalCommander {
	Write-Output "Installing TotalCommander"
	winget install -e --id Ghisler.TotalCommander
}

# Uninstall TotalCommander
Function UninstallTotalCommander {
	Write-Output "Uninstalling TotalCommander"
	winget uninstall -e --id Ghisler.TotalCommander
}

#endregion Third

#region Windows Apps

# Uninstall Microsoft Edge
Function UninstallMicrosoftEdge {
	Write-Output "Trying to uninstall Microsoft Edge"
	winget uninstall -e --id Microsoft.Edge
}

# Install Microsoft Edge
Function InstallMicrosoftEdge {
	Write-Output "Trying to install Microsoft Edge"
	winget install -e --id Microsoft.Edge
}

# Uninstall Cortana
Function UninstallCortana {
	Write-Output "Trying to uninstall Cortana"
	winget uninstall "Cortana"
}

# Install Cortana
Function InstallCortana {
	Write-Output "Trying to install Cortana"
	winget install "Cortana"
}

# Uninstall MSNWeather
Function UninstallMSNWeather {
	Write-Output "Trying to uninstall MSN Weather"
	winget uninstall "MSN Weather"
}

# Install MSNWeather
Function InstallMSNWeather {
	Write-Output "Trying to install MSN Weather"
	winget install "MSN Weather"
}

# Uninstall Get Help
Function UninstallGetHelp {
	Write-Output "Trying to uninstall Get Help"	
	winget uninstall "Get Help"	
}

# Install Get Help
Function InstallGetHelp {
	Write-Output "Trying to install Get Help"	
	winget install "Get Help"	
}

# Uninstall Microsoft Tips
Function UninstallMicrosoftTips {
	Write-Output "Trying to uninstall Microsoft Tips"	
	winget uninstall "Microsoft Tips"	
}

# Install Microsoft Tips
Function InstallMicrosoftTips {
	Write-Output "Trying to install Microsoft Tips"	
	winget install "Microsoft Tips"	
}

# Uninstall HEIF Image Extensions
Function UninstallHEIFImageExtensions {
	Write-Output "Trying to uninstall HEIF Image Extensions"
	winget uninstall "HEIF Image Extensions"	
}

# Install HEIF Image Extensions
Function InstallHEIFImageExtensions {
	Write-Output "Trying to install HEIF Image Extensions"
	winget install "HEIF Image Extensions"	
}

# Uninstall Paint 3D
Function UninstallPaint3D {
	Write-Output "Trying to uninstall Paint 3D"	
	winget uninstall "Paint 3D"	
}

# Install Paint 3D
Function InstallPaint3D {
	Write-Output "Trying to install Paint 3D"	
	winget install "Paint 3D"	
}

# Uninstall 3D Viewer
Function Uninstall3DViewer {
	Write-Output "Trying to uninstall 3D Viewer"	
	winget uninstall "3D Viewer"	
}

# Install 3D Viewer
Function Install3DViewer {
	Write-Output "Trying to install 3D Viewer"	
	winget install "3D Viewer"	
}

# Uninstall Office
Function UninstallOffice {
	Write-Output "Trying to uninstall Office"
	winget uninstall "Office"	
}

# Install Office
Function InstallOffice {
	Write-Output "Trying to install Office"
	winget install "Office"	
}

# Uninstall Microsoft Solitaire Collection
Function UninstallMicrosoftSolitaireCollection {
	Write-Output "Trying to uninstall Microsoft Solitaire Collection"	
	winget uninstall "Microsoft Solitaire Collection"
}

# Install Microsoft Solitaire Collection
Function InstallMicrosoftSolitaireCollection {
	Write-Output "Trying to install Microsoft Solitaire Collection"	
	winget install "Microsoft Solitaire Collection"
}

# Uninstall Microsoft Sticky Notes
Function UninstallMicrosoftStickyNotes {
	Write-Output "Trying to uninstall Microsoft Sticky Notes"	
	winget uninstall "Microsoft Sticky Notes"
}

# Install Microsoft Sticky Notes
Function InstallMicrosoftStickyNotes {
	Write-Output "Trying to install Microsoft Sticky Notes"	
	winget install "Microsoft Sticky Notes"
}

# Uninstall Mixed Reality Portal
Function UninstallMixedRealityPortal {
	Write-Output "Trying to uninstall Mixed Reality Portal"	
	winget uninstall "Mixed Reality Portal"	
}

# Install Mixed Reality Portal
Function InstallMixedRealityPortal {
	Write-Output "Trying to install Mixed Reality Portal"	
	winget install "Mixed Reality Portal"	
}

# Uninstall OneNote
Function UninstallOneNote {
	Write-Output "Trying to uninstall OneNote"	
	winget uninstall "OneNote for Windows 10"
}

# Install OneNote
Function InstallOneNote {
	Write-Output "Trying to install OneNote"	
	winget install "OneNote"
}

# Uninstall Microsoft People
Function UninstallMicrosoftPeople {
	Write-Output "Trying to uninstall Microsoft People"
	winget uninstall "Microsoft People"
}

# Install Microsoft People
Function InstallMicrosoftPeople {
	Write-Output "Trying to install Microsoft People"
	winget install "Microsoft People"
}

# Uninstall Snip & Sketch
Function UninstallSnipSketch {
	Write-Output "Trying to uninstall Snip & Sketch"	
	winget uninstall "Snip & Sketch"	
}

# Install Snip & Sketch
Function InstallSnipSketch {
	Write-Output "Trying to install Snip & Sketch"	
	winget install "Snip & Sketch"	
}

# Uninstall Skype
Function UninstallSkype {
	Write-Output "Trying to uninstall Skype"	
	winget uninstall "Skype"
}

# Install Skype
Function InstallSkype {
	Write-Output "Trying to install Skype"	
	winget install "Skype"
}

# Uninstall Store Experience Host
Function UninstallStoreExperienceHost {
	Write-Output "Trying to uninstall Store Experience Host"
	winget uninstall "Store Experience Host"	
}

# Install Store Experience Host
Function InstallStoreExperienceHost {
	Write-Output "Trying to install Store Experience Host"
	winget install "Store Experience Host"	
}

# Uninstall VP9 Video Extensions
Function UninstallVP9VideoExtensions {
	Write-Output "Trying to uninstall VP9 Video Extensions"	
	winget uninstall "VP9 Video Extensions"
}

# Install VP9 Video Extensions
Function InstallVP9VideoExtensions {
	Write-Output "Trying to install VP9 Video Extensions"	
	winget install "VP9 Video Extensions"
}

# Uninstall Microsoft Pay
Function UninstallMicrosoftPay {
	Write-Output "Trying to uninstall Microsoft Pay"
	winget uninstall "Microsoft Pay"	
}

# Install Microsoft Pay
Function InstallMicrosoftPay {
	Write-Output "Trying to install Microsoft Pay"
	winget install "Microsoft Pay"	
}

# Uninstall Web Media Extensions
Function UninstallWebMediaExtensions {
	Write-Output "Trying to uninstall Web Media Extensions"
	winget uninstall "Web Media Extensions"	
}

# Install Web Media Extensions
Function InstallWebMediaExtensions {
	Write-Output "Trying to install Web Media Extensions"
	winget install "Web Media Extensions"	
}

# Uninstall Webp Image Extensions
Function UninstallWebpImageExtensions {
	Write-Output "Trying to uninstall Webp Image Extensions"
	winget uninstall "Webp Image Extensions"	
}

# Install Webp Image Extensions
Function InstallWebpImageExtensions {
	Write-Output "Trying to install Webp Image Extensions"
	winget install "Webp Image Extensions"	
}

# Uninstall Microsoft Photos
Function UninstallMicrosoftPhotos {
	Write-Output "Trying to uninstall Microsoft Photos"
	winget uninstall "Microsoft Photos"	
}

# Install Microsoft Photos
Function InstallMicrosoftPhotos {
	Write-Output "Trying to install Microsoft Photos"
	winget install "Microsoft Photos"	
}

# Uninstall Windows Clock
Function UninstallWindowsClock {
	Write-Output "Trying to uninstall Windows Clock"
	winget uninstall "Windows Clock"
}

# Install Windows Clock
Function InstallWindowsClock {
	Write-Output "Trying to install Windows Clock"
	winget install "Windows Clock"
}

# Uninstall Windows Calculator
Function UninstallWindowsCalculator {
	Write-Output "Trying to uninstall Windows Calculator"
	winget uninstall "Windows Calculator"
}

# Install Windows Calculator
Function InstallWindowsCalculator {
	Write-Output "Trying to install Windows Calculator"
	winget install "Windows Calculator"
}

# Uninstall Windows Camera
Function UninstallWindowsCamera {
	Write-Output "Trying to uninstall Windows Camera"
	winget uninstall "Windows Camera"
}

# Install Windows Camera
Function InstallWindowsCamera {
	Write-Output "Trying to install Windows Camera"
	winget install "Windows Camera"
}

# Uninstall Feedback Hub
Function UninstallFeedbackHub {
	Write-Output "Trying to uninstall Feedback Hub"
	winget uninstall "Feedback Hub"	
}

# Install Feedback Hub
Function InstallFeedbackHub {
	Write-Output "Trying to install Feedback Hub"
	winget install "Feedback Hub"	
}

# Uninstall Windows Maps
Function UninstallWindowsMaps {
	Write-Output "Trying to uninstall Windows Maps"
	winget uninstall "Windows Maps"	
}

# Install Windows Maps
Function InstallWindowsMaps {
	Write-Output "Trying to install Windows Maps"
	winget install "Windows Maps"	
}

# Uninstall Windows Voice Recorder
Function UninstallWindowsVoiceRecorder {
	Write-Output "Trying to uninstall Windows Voice Recorder"	
	winget uninstall "Windows Voice Recorder"	
}

# Install Windows Voice Recorder
Function InstallWindowsVoiceRecorder {
	Write-Output "Trying to install Windows Voice Recorder"	
	winget install "Windows Voice Recorder"	
}

# Uninstall Xbox
Function UninstallXbox {
	Write-Output "Trying to uninstall Xbox"
	winget uninstall "Xbox"	
}

# Install Xbox
Function InstallXbox {
	Write-Output "Trying to install Xbox"
	winget install "Xbox"	
}

# Uninstall Xbox TCUI
Function UninstallXboxTCUI {
	Write-Output "Trying to uninstall Xbox TCUI"
	winget uninstall "Xbox TCUI"	
}

# Install Xbox TCUI
Function InstallXboxTCUI {
	Write-Output "Trying to install Xbox TCUI"
	winget install "Xbox TCUI"	
}

# Uninstall Xbox Game Bar Plugin
Function UninstallXboxGameBarPlugin {
	Write-Output "Trying to uninstall Xbox Game Bar Plugin"
	winget uninstall "Xbox Game Bar Plugin"
}

# Install Xbox Game Bar Plugin
Function InstallXboxGameBarPlugin {
	Write-Output "Trying to install Xbox Game Bar Plugin"
	winget install "Xbox Game Bar Plugin"
}

# Uninstall Xbox Game Bar
Function UninstallXboxGameBar {
	Write-Output "Trying to uninstall Xbox Game Bar"
	winget uninstall "Xbox Game Bar"	
}

# Install Xbox Game Bar
Function InstallXboxGameBar {
	Write-Output "Trying to install Xbox Game Bar"
	winget install "Xbox Game Bar"	
}

# Uninstall Xbox Identity Provider
Function UninstallXboxIdentityProvider {
	Write-Output "Trying to uninstall Xbox Identity Provider"
	winget uninstall "Xbox Identity Provider"
}

# Install Xbox Identity Provider
Function InstallXboxIdentityProvider {
	Write-Output "Trying to install Xbox Identity Provider"
	winget install "Xbox Identity Provider"
}

# Uninstall Xbox Game Speech Window
Function UninstallXboxGameSpeechWindow {
	Write-Output "Trying to uninstall Xbox Game Speech Window"
	winget uninstall "Xbox Game Speech Window"	
}

# Install Xbox Game Speech Window
Function InstallXboxGameSpeechWindow {
	Write-Output "Trying to install Xbox Game Speech Window"
	winget install "Xbox Game Speech Window"	
}

# Uninstall Phone Link
Function UninstallPhoneLink {
	Write-Output "Trying to uninstall Phone Link"
	winget uninstall "Phone Link"
}

# Install Phone Link
Function InstallPhoneLink {
	Write-Output "Trying to install Phone Link"
	winget install "Phone Link"
}

# Uninstall Groove Music
Function UninstallGrooveMusic {
	Write-Output "Trying to uninstall Groove Music"
	winget uninstall "Groove Music"	
}

# Install Groove Music
Function InstallGrooveMusic {
	Write-Output "Trying to install Groove Music"
	winget install "Groove Music"	
}

# Uninstall Movies & TV
Function UninstallMoviesTV {
	Write-Output "Trying to uninstall Movies & TV"
	winget uninstall "Movies & TV"	
}

# Install Movies & TV
Function InstallMoviesTV {
	Write-Output "Trying to install Movies & TV"
	winget install "Movies & TV"	
}

# Uninstall Mail and Calendar
Function UninstallMailCalendar {
	Write-Output "Trying to uninstall Mail and Calendar"
	winget uninstall "Mail and Calendar"	
}

# Install Mail and Calendar
Function InstallMailCalendar {
	Write-Output "Trying to install Mail and Calendar"
	winget install "Mail and Calendar"	
}

# Uninstall Microsoft Store
Function UninstallMicrosoftStore {
	Write-Output "Trying to uninstall Microsoft Store"
	winget uninstall "Microsoft Store"
}

# Install Microsoft Store
Function InstallMicrosoftStore {
	Write-Output "Trying to install Microsoft Store"
	winget install "Microsoft Store"
}

#endregion Windows Apps

#region Privacy & Telemetry

# Disable the Connected User Experiences and Telemetry (DiagTrack) service, and block connection for the Unified Telemetry Client Outbound Traffic
Function DisableDiagTrackService {
	Write-Output "Disabling DiagTrack Service ..."
	# Connected User Experiences and Telemetry
	Get-Service -Name DiagTrack | Stop-Service -Force
	Get-Service -Name DiagTrack | Set-Service -StartupType Disabled

	# Block connection for the Unified Telemetry Client Outbound Traffic
	Get-NetFirewallRule -Group DiagTrack | Set-NetFirewallRule -Enabled False -Action Block
}

# Enable the Connected User Experiences and Telemetry (DiagTrack) service, and allow connection for the Unified Telemetry Client Outbound Traffic
Function EnableDiagTrackService {
	Write-Output "Enabling DiagTrack Service ..."
	# Connected User Experiences and Telemetry
	Get-Service -Name DiagTrack | Set-Service -StartupType Automatic
	Get-Service -Name DiagTrack | Start-Service

	# Allow connection for the Unified Telemetry Client Outbound Traffic
	Get-NetFirewallRule -Group DiagTrack | Set-NetFirewallRule -Enabled True -Action Allow
}

# Set the diagnostic data collection to minimum
Function MinimalDiagnosticDataLevel {
	Write-Output "Setting Minimal Diagnostic Data Level ..."
	if (Get-WindowsEdition -Online | Where-Object -FilterScript {($_.Edition -like "Enterprise*") -or ($_.Edition -eq "Education")})
	{
		# Security level
		if (-not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection))
		{
			New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Force
		}
		New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -PropertyType DWord -Value 0 -Force
		#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Type DWORD -Value 0
		}
		else
		{
			# Required diagnostic data
			if (-not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection))
			{
				New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Force
			}
			New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -PropertyType DWord -Value 1 -Force
			#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Type DWORD -Value 1
		}
		if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack))
		{
			New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack -Force
		}
		New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection -Name MaxTelemetryAllowed -PropertyType DWord -Value 1 -Force
		New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack -Name ShowedToastAtLevel -PropertyType DWord -Value 1 -Force

}

# Set the diagnostic data collection to default
Function DefaultDiagnosticDataLevel {
	Write-Output "Setting Default Diagnostic Data Level ..."
	# Optional diagnostic data
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Force -ErrorAction Ignore
	#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Type CLEAR

	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack))
	{
		New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection -Name MaxTelemetryAllowed -PropertyType DWord -Value 3 -Force
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack -Name ShowedToastAtLevel -PropertyType DWord -Value 3 -Force

}

# Turn off Windows Error Reporting
Function DisableErrorReporting {
	Write-Output "Disabling Error Reporting ..."
	if ((Get-WindowsEdition -Online).Edition -notmatch "Core")
	{
		Get-ScheduledTask -TaskName QueueReporting | Disable-ScheduledTask
		New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Windows Error Reporting" -Name Disabled -PropertyType DWord -Value 1 -Force
	}

	Get-Service -Name WerSvc | Stop-Service -Force
	Get-Service -Name WerSvc | Set-Service -StartupType Disabled
}

# Turn on Windows Error Reporting
Function EnableErrorReporting {
	Write-Output "Enabling Error Reporting ..."
	Get-ScheduledTask -TaskName QueueReporting | Enable-ScheduledTask
	Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Windows Error Reporting" -Name Disabled -Force -ErrorAction Ignore

	Get-Service -Name WerSvc | Set-Service -StartupType Manual
	Get-Service -Name WerSvc | Start-Service
}

# Change the feedback frequency to "Never"
Function NeverFeedbackFrequency {
	Write-Output "Setting Never Feedback Frequency ..."
	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Siuf\Rules))
	{
		New-Item -Path HKCU:\Software\Microsoft\Siuf\Rules -Force
	}
	New-ItemProperty -Path HKCU:\Software\Microsoft\Siuf\Rules -Name NumberOfSIUFInPeriod -PropertyType DWord -Value 0 -Force
}

# Change feedback frequency to "Automatically"
Function AutomaticallyFeedbackFrequency {
	Write-Output "Setting Automatically Feedback Frequency ..."
	Remove-Item -Path HKCU:\Software\Microsoft\Siuf\Rules -Force -ErrorAction Ignore
}

# Do not use sign-in info to automatically finish setting up device after an update
Function DisableSigninInfo {
	Write-Output "Disabling Signin Info ..."
	$SID = (Get-CimInstance -ClassName Win32_UserAccount | Where-Object -FilterScript {$_.Name -eq $env:USERNAME}).SID
	if (-not (Test-Path -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserARSO\$SID"))
	{
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserARSO\$SID" -Force
	}
	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserARSO\$SID" -Name OptOut -PropertyType DWord -Value 1 -Force	
}

# Use sign-in info to automatically finish setting up device after an update
Function EnableSigninInfo {
	Write-Output "Enabling Signin Info ..."
	$SID = (Get-CimInstance -ClassName Win32_UserAccount | Where-Object -FilterScript {$_.Name -eq $env:USERNAME}).SID
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserARSO\$SID" -Name OptOut -Force -ErrorAction Ignore
}

# Do not let websites show me locally relevant content by accessing my language list
Function DisableLanguageListAccess {
	Write-Output "Disabling Language List Access ..."
	New-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name HttpAcceptLanguageOptOut -PropertyType DWord -Value 1 -Force
}

# Let websites show me locally relevant content by accessing language my list
Function EnableLanguageListAccess {
	Write-Output "Enabling Language List Access ..."
	Remove-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name HttpAcceptLanguageOptOut -Force -ErrorAction Ignore
}

# Do not let apps show me personalized ads by using my advertising ID
Function DisableAdvertisingID {
	Write-Output "Disabling Advertising ID ..."
	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo))
	{
		New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Force
	}
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -PropertyType DWord -Value 0 -Force		
}

# Let apps show me personalized ads by using my advertising ID
Function EnableAdvertisingID {
	Write-Output "Enabling Advertising ID ..."
	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo))
	{
		New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Force
	}
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -PropertyType DWord -Value 1 -Force		
}

# Hide the Windows welcome experiences after updates and occasionally when I sign in to highlight what's new and suggested
Function HideWindowsWelcomeExperience {
	Write-Output "Hiding Windows Welcome Experience ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-310093Enabled -PropertyType DWord -Value 0 -Force
}

# Show the Windows welcome experiences after updates and occasionally when I sign in to highlight what's new and suggested
Function ShowWindowsWelcomeExperience {
	Write-Output "Showing Windows Welcome Experience ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-310093Enabled -PropertyType DWord -Value 1 -Force
}

# Do not get tip and suggestions when I use Windows
Function DisableWindowsTips {
	Write-Output "Disabling Windows Tips ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-338389Enabled -PropertyType DWord -Value 0 -Force
}

# Get tip and suggestions when I use Windows
Function EnableWindowsTips {
	Write-Output "Enabling Windows Tips ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-338389Enabled -PropertyType DWord -Value 1 -Force		
}

# Hide from me suggested content in the Settings app
Function HideSettingsSuggestedContent {
	Write-Output "Hiding Settings Suggested Content ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-338393Enabled -PropertyType DWord -Value 0 -Force
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-353694Enabled -PropertyType DWord -Value 0 -Force
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-353696Enabled -PropertyType DWord -Value 0 -Force
}

# Show me suggested content in the Settings app
Function ShowSettingsSuggestedContent {
	Write-Output "Showing Settings Suggested Content ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-338393Enabled -PropertyType DWord -Value 1 -Force
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-353694Enabled -PropertyType DWord -Value 1 -Force
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-353696Enabled -PropertyType DWord -Value 1 -Force		
}

# Turn off automatic installing suggested apps
Function DisableAppsSilentInstalling {
	Write-Output "Disabling Apps Silent Installing ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SilentInstalledAppsEnabled -PropertyType DWord -Value 0 -Force		
}

# Turn on automatic installing suggested apps
Function EnableAppsSilentInstalling {
	Write-Output "Enabling Apps Silent Installing ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SilentInstalledAppsEnabled -PropertyType DWord -Value 1 -Force		
}

# Disable suggestions on how I can set up my device
Function DisableWhatsNewInWindows {
	Write-Output "Disabling Whats New In Windows ..."
	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement))
	{
		New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement -Force
	}
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement -Name ScoobeSystemSettingEnabled -PropertyType DWord -Value 0 -Force
}

# Offer suggestions on how I can set up my device
Function EnableWhatsNewInWindows {
	Write-Output "Enabling Whats New In Windows ..."
	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement))
	{
		New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement -Force
	}
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement -Name ScoobeSystemSettingEnabled -PropertyType DWord -Value 1 -Force		
}

# Do not let Microsoft offer you tailored experiences based on the diagnostic data setting you have chosen
Function DisableTailoredExperiences {
	Write-Output "Disabling Tailored Experiences ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy -Name TailoredExperiencesWithDiagnosticDataEnabled -PropertyType DWord -Value 0 -Force		
}

# Let Microsoft offer you tailored experiences based on the diagnostic data setting you have chosen
Function EnableTailoredExperiences {
	Write-Output "Enabling Tailored Experiences ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy -Name TailoredExperiencesWithDiagnosticDataEnabled -PropertyType DWord -Value 1 -Force		
}

# Disable Bing search in the Start Menu
Function DisableBingSearch {
	Write-Output "Disabling Bing Search ..."
	if (-not (Test-Path -Path HKCU:\Software\Policies\Microsoft\Windows\Explorer))
	{
		New-Item -Path HKCU:\Software\Policies\Microsoft\Windows\Explorer -Force
	}
	New-ItemProperty -Path HKCU:\Software\Policies\Microsoft\Windows\Explorer -Name DisableSearchBoxSuggestions -PropertyType DWord -Value 1 -Force		
}

# Enable Bing search in the Start Menu
Function EnableBingSearch {
	Write-Output "Enabling Bing Search ..."
	Remove-ItemProperty -Path HKCU:\Software\Policies\Microsoft\Windows\Explorer -Name DisableSearchBoxSuggestions -Force -ErrorAction Ignore
	#Set-Policy -Scope User -Path Software\Policies\Microsoft\Windows\Explorer -Name DisableSearchBoxSuggestions -Type CLEAR
}

#endregion Privacy & Telemetry

#region UI & Personalization

# Show the "This PC" icon on Desktop
Function ShowThisPC {
	Write-Output "Showing This PC ..."
	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel))
	{
		New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel -Force
	}
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -PropertyType DWord -Value 0 -Force
}

# Hide the "This PC" icon on Desktop
Function HideThisPC {
	Write-Output "Hiding This PC ..."
	Remove-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Force -ErrorAction Ignore
}

# Do not use item check boxes
Function DisableCheckBoxes {
	Write-Output "Disabling CheckBoxes ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name AutoCheckSelect -PropertyType DWord -Value 0 -Force	
}

# Use check item check boxes
Function EnableCheckBoxes {
	Write-Output "Enabling CheckBoxes ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name AutoCheckSelect -PropertyType DWord -Value 1 -Force	
}

# Show hidden files, folders, and drives
Function EnableHiddenItems {
	Write-Output "Enabling Hidden Items ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name Hidden -PropertyType DWord -Value 1 -Force		
}

# Do not show hidden files, folders, and drives
Function DisableHiddenItems {
	Write-Output "Disabling Hidden Items ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name Hidden -PropertyType DWord -Value 2 -Force
}

# Show file name extensions
Function ShowFileExtensions {
	Write-Output "Showing File Extensions ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -PropertyType DWord -Value 0 -Force		
}

# Hide file name extensions
Function HideFileExtensions {
	Write-Output "Hiding File Extensions ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -PropertyType DWord -Value 1 -Force		
}

# Show folder merge conflicts
Function ShowMergeConflicts {
	Write-Output "Showing Merge Conflicts ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideMergeConflicts -PropertyType DWord -Value 0 -Force
}

# Hide folder merge conflicts
Function HideMergeConflicts {
	Write-Output "Hiding Merge Conflicts ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideMergeConflicts -PropertyType DWord -Value 1 -Force
}

# Open File Explorer to "This PC"
Function ThisPCOpenFileExplorerTo {
	Write-Output "This PC Open File Explorer To ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -PropertyType DWord -Value 1 -Force
}

# Open File Explorer to Quick access
Function QuickAccessOpenFileExplorerTo {
	Write-Output "Quick Access Open File Explorer To ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -PropertyType DWord -Value 2 -Force		
}

# Hide Cortana button on the taskbar
Function HideCortanaButton {
	Write-Output "Hiding Cortana Button ..."
	if (Get-AppxPackage -Name Microsoft.549981C3F5F10)
	{
		New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowCortanaButton -PropertyType DWord -Value 0 -Force
	}
}

# Show Cortana button on the taskbar
Function ShowCortanaButton {
	Write-Output "Showing Cortana Button ..."
	if (Get-AppxPackage -Name Microsoft.549981C3F5F10)
	{
		New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowCortanaButton -PropertyType DWord -Value 1 -Force
	}
}

# Do not show sync provider notification within File Explorer
Function HideOneDriveFileExplorerAd {
	Write-Output "Hiding OneDrive File Explorer Ad ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowSyncProviderNotifications -PropertyType DWord -Value 0 -Force
}

# Show sync provider notification within File Explorer
Function ShowOneDriveFileExplorerAd {
	Write-Output "Showing OneDrive File Explorer Ad ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowSyncProviderNotifications -PropertyType DWord -Value 1 -Force
}

# When I snap a window, do not show what I can snap next to it
Function DisableSnapAssist {
	Write-Output "Disabling Snap Assist ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name SnapAssist -PropertyType DWord -Value 0 -Force		
}

# When I snap a window, show what I can snap next to it
Function EnableSnapAssist {
	Write-Output "Enabling Snap Assist ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name SnapAssist -PropertyType DWord -Value 1 -Force
}

# Show the file transfer dialog box in the detailed mode
Function DetailedFileTransferDialog {
	Write-Output "Setting Detailed File Transfer Dialog ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager -Name EnthusiastMode -PropertyType DWord -Value 1 -Force	
}

# Show the file transfer dialog box in the compact mode
Function CompactFileTransferDialog {
	Write-Output "Setting Compact File Transfer Dialog ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager -Name EnthusiastMode -PropertyType DWord -Value 0 -Force
}

# Expand the File Explorer ribbon
Function ExpandedFileExplorerRibbon {
	Write-Output "Setting Expanded File Explorer Ribbon ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Ribbon))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Ribbon -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Ribbon -Name MinimizedStateTabletModeOff -PropertyType DWord -Value 0 -Force
}

# Minimize the File Explorer ribbon
Function MinimizedFileExplorerRibbon {
	Write-Output "Setting Minimized File Explorer Ribbon ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Ribbon))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Ribbon -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Ribbon -Name MinimizedStateTabletModeOff -PropertyType DWord -Value 1 -Force
}

# Display the recycle bin files delete confirmation dialog
Function EnableRecycleBinDeleteConfirmation {
	Write-Output "Enabling Recycle Bin Delete Confirmation ..."
	$ShellState = Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShellState
	$ShellState[4] = 51
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShellState -PropertyType Binary -Value $ShellState -Force
}

# Do not display the recycle bin files delete confirmation dialog
Function DisableRecycleBinDeleteConfirmation {
	Write-Output "Disabling Recycle Bin Delete Confirmation ..."
	$ShellState = Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShellState
	$ShellState[4] = 55
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShellState -PropertyType Binary -Value $ShellState -Force	
}

# Hide the "3D Objects" folder in "This PC" and Quick access
Function Hide3DObjects {
	Write-Output "Hiding 3D Objects ..."
	if (-not (Test-Path -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag"))
	{
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force
	}
	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name ThisPCPolicy -PropertyType String -Value Hide -Force		
}

# Show the "3D Objects" folder in "This PC" and Quick access
Function Show3DObjects{
	Write-Output "Showing 3D Objects ..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name ThisPCPolicy -Force -ErrorAction Ignore		
}

# Hide recently used files in Quick access
Function HideQuickAccessRecentFiles {
	Write-Output "Hiding Quick Access Recent Files ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -PropertyType DWord -Value 0 -Force
}

# Show recently used files in Quick access
Function ShowQuickAccessRecentFiles {
	Write-Output "Showing Quick Access Recent Files ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -PropertyType DWord -Value 1 -Force
}

# Hide the Task view button on the taskbar
Function HideTaskViewButton {
	Write-Output "Hiding Task View Button ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowTaskViewButton -PropertyType DWord -Value 0 -Force
}

# Show the Task View button on the taskbar
Function ShowTaskViewButton {
	Write-Output "Showing Task View Button ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowTaskViewButton -PropertyType DWord -Value 1 -Force
}

# Hide People button on the taskbar
Function HidePeopleTaskbar {
	Write-Output "Hiding People Taskbar ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People -Name PeopleBand -PropertyType DWord -Value 0 -Force
}

# Show People button on the taskbar
Function ShowPeopleTaskbar {
	Write-Output "Showing People Taskbar ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People -Name PeopleBand -PropertyType DWord -Value 1 -Force
}

# Show seconds on the taskbar clock
Function ShowSecondsInSystemClock {
	Write-Output "Showing Seconds In System Clock ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowSecondsInSystemClock -PropertyType DWord -Value 1 -Force
}

# Hide seconds on the taskbar clock
Function HideSecondsInSystemClock {
	Write-Output "Hiding Seconds In System Clock ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowSecondsInSystemClock -PropertyType DWord -Value 0 -Force
}

# Hide the Windows Ink Workspace button on the taskbar
Function HideWindowsInkWorkspace {
	Write-Output "Hiding Windows Ink Workspace ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace -Name PenWorkspaceButtonDesiredVisibility -PropertyType DWord -Value 0 -Force
}

# Show the Windows Ink Workspace button on the taskbar
Function ShowWindowsInkWorkspace {
	Write-Output "Showing Windows Ink Workspace ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace -Name PenWorkspaceButtonDesiredVisibility -PropertyType DWord -Value 1 -Force
}

# Hide the Meet Now icon in the notification area
Function HideMeetNow {
	Write-Output "Hiding Meet Now ..."
	$Settings = Get-ItemPropertyValue -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 -Name Settings -ErrorAction Ignore
	$Settings[9] = 128
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 -Name Settings -PropertyType Binary -Value $Settings -Force

}

# Show the Meet Now icon in the notification area
Function ShowMeetNow {
	Write-Output "Showing Meet Now ..."
	$Settings = Get-ItemPropertyValue -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 -Name Settings -ErrorAction Ignore
	$Settings[9] = 0
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 -Name Settings -PropertyType Binary -Value $Settings -Force

}

# Disable "News and Interests" on the taskbar
Function DisableNewsInterests {
	Write-Output "Disabling News Interest ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds -Name ShellFeedsTaskbarViewMode -PropertyType DWord -Value 2 -Force
}

# Enable "News and Interests" on the taskbar
Function EnableNewsInterests {
	Write-Output "Enabling News Interest ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds -Name ShellFeedsTaskbarViewMode -PropertyType DWord -Value 0 -Force
}

# Set the default Windows mode to dark
Function DarkWindowsColorMode {
	Write-Output "Setting Dark Windows Color Mode ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -PropertyType DWord -Value 0 -Force
}

# Set the default Windows mode to light
Function LightWindowsColorMode {
	Write-Output "Setting Light Windows Color Mode ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -PropertyType DWord -Value 1 -Force
}

# Set the default app mode to dark
Function DarkAppColorMode {
	Write-Output "Setting Dark App Color Mode ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -PropertyType DWord -Value 0 -Force
}

# Set the default app mode to light
Function LightAppColorMode {
	Write-Output "Setting Light App Color Mode ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -PropertyType DWord -Value 1 -Force
}

# Hide the "New App Installed" indicator
Function HideNewAppInstalledNotification {
	Write-Output "Hiding New App Installed Notification ..."
	if (-not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer))
	{
		New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name NoNewAppAlert -PropertyType DWord -Value 1 -Force
}

# Show the "New App Installed" indicator
Function ShowNewAppInstalledNotification {
	Write-Output "Showing New App Installed Notification ..."
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name NoNewAppAlert -Force
}

# Disable first sign-in animation after the upgrade
Function DisableFirstLogonAnimation {
	Write-Output "Disabling First Logon Animation ..."
	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name EnableFirstLogonAnimation -PropertyType DWord -Value 0 -Force
}

# Enable first sign-in animation after the upgrade
Function EnableFirstLogonAnimation {
	Write-Output "Enabling First Logon Animation ..."
	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name EnableFirstLogonAnimation -PropertyType DWord -Value 1 -Force
}

# Set the quality factor of the JPEG desktop wallpapers to maximum
Function MaxJPEGWallpapersQuality {
	Write-Output "Setting Max JPEG Wallpapers Quality ..."
	New-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name JPEGImportQuality -PropertyType DWord -Value 100 -Force
}

# Set the quality factor of the JPEG desktop wallpapers to default
Function DefaultJPEGWallpapersQuality {
	Write-Output "Setting Default JPEG Wallpapers Quality ..."
	Remove-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name JPEGImportQuality -Force -ErrorAction Ignore
}

# Start Task Manager in the expanded mode
Function ExpandedTaskManagerWindow {
	Write-Output "Setting Expanded Task Manager Window ..."
	$Taskmgr = Get-Process -Name Taskmgr -ErrorAction Ignore

	Start-Sleep -Seconds 1

	if ($Taskmgr)
	{
		$Taskmgr.CloseMainWindow()
	}
	Start-Process -FilePath Taskmgr.exe -PassThru

	Start-Sleep -Seconds 3

	do
	{
		Start-Sleep -Milliseconds 100
		$Preferences = Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\TaskManager -Name Preferences
	}
	until ($Preferences)

	Stop-Process -Name Taskmgr -ErrorAction Ignore

	$Preferences[28] = 0
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\TaskManager -Name Preferences -PropertyType Binary -Value $Preferences -Force
}

# Start Task Manager in the compact mode
Function CompactTaskManagerWindow {
	Write-Output "Setting Compact Task Manager Window ..."
	$Taskmgr = Get-Process -Name Taskmgr -ErrorAction Ignore

	Start-Sleep -Seconds 1

	if ($Taskmgr)
	{
		$Taskmgr.CloseMainWindow()
	}
	Start-Process -FilePath Taskmgr.exe -PassThru

	Start-Sleep -Seconds 3

	do
	{
		Start-Sleep -Milliseconds 100
		$Preferences = Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\TaskManager -Name Preferences
	}
	until ($Preferences)

	Stop-Process -Name Taskmgr -ErrorAction Ignore
	$Preferences[28] = 1
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\TaskManager -Name Preferences -PropertyType Binary -Value $Preferences -Force
}

# Notify me when a restart is required to finish updating
Function ShowRestartNotification {
	Write-Output "Showing Restart Notification ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name RestartNotificationsAllowed2 -PropertyType DWord -Value 1 -Force
}

# Do not notify me when a restart is required to finish updating
Function HideRestartNotification {
	Write-Output "Hiding Restart Notification ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name RestartNotificationsAllowed2 -PropertyType DWord -Value 0 -Force
}

# Do not add the "- Shortcut" suffix to the file name of created shortcuts
Function DisableShortcutsSuffix {
	Write-Output "Disabling Shortcuts Suffix ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates -Name ShortcutNameTemplate -PropertyType String -Value "%s.lnk" -Force
}

# Add the "- Shortcut" suffix to the file name of created shortcuts
Function EnableShortcutsSuffix {
	Write-Output "Enabling Shortcuts Suffix ..."
	Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates -Name ShortcutNameTemplate -Force -ErrorAction Ignore
}

# Use the Print screen button to open screen snipping
Function EnablePrtScnSnippingTool {
	Write-Output "Enabling PrtScn Snipping Tool ..."
	New-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name PrintScreenKeyForSnippingEnabled -PropertyType DWord -Value 1 -Force
}

# Do not use the Print screen button to open screen snipping
Function DisablePrtScnSnippingTool {
	Write-Output "Disabling PrtScn Snipping Tool ..."
	New-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name PrintScreenKeyForSnippingEnabled -PropertyType DWord -Value 0 -Force
}

# Do not use a different input method for each app window
Function DisableAppsLanguageSwitch {
	Write-Output "Disabling Apps Language Switch ..."
	Set-WinLanguageBarOption
}

# Let me use a different input method for each app window
Function EnableAppsLanguageSwitch {
	Write-Output "Enabling Apps Language Switch ..."
	Set-WinLanguageBarOption -UseLegacySwitchMode
}

# When I grab a windows's title bar and shake it, don't minimize all other windows
Function DisableAeroShaking {
	Write-Output "Disabling Aero Shaking ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name DisallowShaking -PropertyType DWord -Value 1 -Force
}

# When I grab a windows's title bar and shake it, minimize all other windows
Function EnableAeroShaking {
	Write-Output "Enabling Aero Shaking ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name DisallowShaking -PropertyType DWord -Value 0 -Force
}

# Do not group files and folder in the Downloads folder
Function NoneFolderGroupBy {
	Write-Output "Setting None for Folder Group By ..."
	# Clear any Common Dialog views
	Get-ChildItem -Path "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\*\Shell" -Recurse | Where-Object -FilterScript {$_.PSChildName -eq "{885A186E-A440-4ADA-812B-DB871B942259}"} | Remove-Item -Force

	# https://learn.microsoft.com/en-us/windows/win32/properties/props-system-null
	if (-not (Test-Path -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}"))
	{
		New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" -Force
	}
	New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" -Name ColumnList -PropertyType String -Value "System.Null" -Force
	New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" -Name GroupBy -PropertyType String -Value "System.Null" -Force
	New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" -Name LogicalViewMode -PropertyType DWord -Value 1 -Force
	New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" -Name Name -PropertyType String -Value NoName -Force
	New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" -Name Order -PropertyType DWord -Value 0 -Force
	New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" -Name PrimaryProperty -PropertyType String -Value "System.ItemNameDisplay" -Force
	New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" -Name SortByList -PropertyType String -Value "prop:System.ItemNameDisplay" -Force
}

# Group files and folder by date modified in the Downloads folder
Function DefaultFolderGroupBy {
	Write-Output "Setting Default for Folder Group By ..."
	Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}" -Recurse -Force -ErrorAction Ignore
}

# Do not expand to open folder on navigation pane
Function DisableNavigationPaneExpand {
	Write-Output "Disabling Navigation Pane Expand ..."
	Remove-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Force -ErrorAction Ignore
}

# Expand to open folder on navigation pane
Function EnableNavigationPaneExpand {
	Write-Output "Enabling Navigation Pane Expand ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -PropertyType DWord -Value 1 -Force
}

#endregion UI & Personalization

#region OneDrive

# Uninstall OneDrive
Function UninstallOneDrive {
	Write-Output "Uninstalling OneDrive ..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Type DWord -Value 1

	Stop-Process -Name "OneDrive" -ErrorAction SilentlyContinue
	Start-Sleep -s 2
	$onedrive = "$env:SYSTEMROOT\SysWOW64\OneDriveSetup.exe"
	If (!(Test-Path $onedrive)) {
		$onedrive = "$env:SYSTEMROOT\System32\OneDriveSetup.exe"
	}
	Start-Process $onedrive "/uninstall" -NoNewWindow -Wait
	Start-Sleep -s 2
	Stop-Process -Name "explorer" -ErrorAction SilentlyContinue
	Start-Sleep -s 2
	Remove-Item -Path "$env:USERPROFILE\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
	Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
	Remove-Item -Path "$env:PROGRAMDATA\Microsoft OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
	Remove-Item -Path "$env:SYSTEMDRIVE\OneDriveTemp" -Force -Recurse -ErrorAction SilentlyContinue
	If (!(Test-Path "HKCR:")) {
		New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
	}
	Remove-Item -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
	Remove-Item -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
}

# Install OneDrive
Function InstallOneDrive {
	Write-Output "Installing OneDrive ..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -ErrorAction SilentlyContinue
	& "$env:SystemRoot\SysWOW64\OneDriveSetup.exe"
}

#endregion OneDrive

#region System

# Turn on Storage Sense
Function EnableStorageSense {
	Write-Output "Enabling Storage Sense ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -ItemType Directory -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 01 -PropertyType DWord -Value 1 -Force
}

# Turn off Storage Sense
Function DisableStorageSense {
	Write-Output "Disabling Storage Sense ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -ItemType Directory -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 01 -PropertyType DWord -Value 0 -Force
}

# Turn on automatic cleaning up temporary system and app files
Function EnableStorageSenseTempFiles {
	Write-Output "Enabling Storage Sense Temp Files ..."
	if ((Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 01) -eq "1")
	{
		New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 04 -PropertyType DWord -Value 1 -Force
	}	
}

# Turn off automatic cleaning up temporary system and app files
Function DisableStorageSenseTempFiles {
	Write-Output "Disabling Storage Sense Temp Files ..."
	if ((Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 01) -eq "1")
	{
		New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 04 -PropertyType DWord -Value 0 -Force
	}
}

# Run Storage Sense every month
Function MonthStorageSenseFrequency {
	Write-Output "Setting Month Storage Sense Frequency ..."
	if ((Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 01) -eq "1")
	{
		New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 2048 -PropertyType DWord -Value 30 -Force
	}
}

# Run Storage Sense during low free disk space
Function DefaultStorageSenseFrequency {
	Write-Output "Setting Default Storage Sense Frequency ..."
	if ((Get-ItemPropertyValue -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 01) -eq "1")
	{
		New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy -Name 2048 -PropertyType DWord -Value 0 -Force
	}
}

# Disable hibernation
Function DisableHibernation {
	Write-Output "Disabling Hibernation ..."
	POWERCFG /HIBERNATE OFF
}

# Enable hibernation
Function EnableHibernation {
	Write-Output "Enabling Hibernation ..."
	POWERCFG /HIBERNATE ON
}

# Disable the Windows 260 character path limit
Function DisableWin32LongPathLimit {
	Write-Output "Disabling Win32 Long Path Limit ..."
	New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem -Name LongPathsEnabled -PropertyType DWord -Value 1 -Force
}

# Enable the Windows 260 character path limit
Function EnableWin32LongPathLimit {
	Write-Output "Enabling Win32 Long Path Limit ..."
	New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem -Name LongPathsEnabled -PropertyType DWord -Value 0 -Force
}

# Display the Stop error information on the BSoD
Function EnableBSoDStopError {
	Write-Output "Enabling BSoD Stop Error ..."
	New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl -Name DisplayParameters -PropertyType DWord -Value 1 -Force
}

# Do not display the Stop error information on the BSoD
Function DisableBSoDStopError {
	Write-Output "Disabling BSoD Stop Error ..."
	New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl -Name DisplayParameters -PropertyType DWord -Value 0 -Force
}

# Never notify when apps try to make changes to my computer
Function NeverAdminApprovalMode {
	Write-Output "Setting Never Admin Approval Mode ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -PropertyType DWord -Value 0 -Force
}

# Notify me only when apps try to make changes to my computer
Function DefaultAdminApprovalMode {
	Write-Output "Setting Default Admin Approval Mode ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -PropertyType DWord -Value 5 -Force
}

# Turn on access to mapped drives from app running with elevated permissions with Admin Approval Mode enabled
Function EnableMappedDrivesAppElevatedAccess {
	Write-Output "Enabling Mapped Drives App Elevated Access ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLinkedConnections -PropertyType DWord -Value 1 -Force
}

# Turn off access to mapped drives from app running with elevated permissions with Admin Approval Mode enabled
Function DisableMappedDrivesAppElevatedAccess {
	Write-Output "Disabling Mapped Drives App Elevated Access ..."
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLinkedConnections -Force -ErrorAction Ignore
}

# Turn off Delivery Optimization
Function DisableDeliveryOptimization {
	Write-Output "Disabling Delivery Optimization ..."
	New-ItemProperty -Path Registry::HKEY_USERS\S-1-5-20\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings -Name DownloadMode -PropertyType DWord -Value 0 -Force
	Delete-DeliveryOptimizationCache -Force
}

# Turn on Delivery Optimization
Function EnableDeliveryOptimization {
	Write-Output "Enabling Delivery Optimization ..."
	New-ItemProperty -Path Registry::HKEY_USERS\S-1-5-20\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings -Name DownloadMode -PropertyType DWord -Value 1 -Force
}

# Always wait for the network at computer startup and logon for workgroup networks
Function EnableWaitNetworkStartup {
	Write-Output "Enabling Wait Network Startup ..."
	if ((Get-CimInstance -ClassName CIM_ComputerSystem).PartOfDomain -eq $true)
	{
		if (-not (Test-Path -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon"))
		{
			New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon" -Force
		}
		New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name SyncForegroundPolicy -PropertyType DWord -Value 1 -Force
		#Set-Policy -Scope Computer -Path "SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name SyncForegroundPolicy -Type DWORD -Value 1			
	}
}

# Never wait for the network at computer startup and logon for workgroup networks
Function DisableWaitNetworkStartup {
	Write-Output "Disabling Wait Network Startup ..."
	if ((Get-CimInstance -ClassName CIM_ComputerSystem).PartOfDomain -eq $true)
	{
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name SyncForegroundPolicy -Force -ErrorAction Ignore
		#Set-Policy -Scope Computer -Path "SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name SyncForegroundPolicy -Type CLEAR			
	}
}

# Do not let Windows manage my default printer
Function DisableWindowsManageDefaultPrinter {
	Write-Output "Disabling Windows Manage Default Printer ..."
	New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -Name LegacyDefaultPrinterMode -PropertyType DWord -Value 1 -Force
}

# Let Windows manage my default printer
Function EnableWindowsManageDefaultPrinter {
	Write-Output "Enabling Windows Manage Default Printer ..."
	New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -Name LegacyDefaultPrinterMode -PropertyType DWord -Value 0 -Force
}

# Receive updates for other Microsoft products
Function EnableUpdateMicrosoftProducts {
	Write-Output "Enabling Update Microsoft Products ..."
	(New-Object -ComObject Microsoft.Update.ServiceManager).AddService2("7971f918-a847-4430-9279-4a52d1efe18d", 7, "")
}

# Do not receive updates for other Microsoft products
Function DisableUpdateMicrosoftProducts {
	Write-Output "Disabling Update Microsoft Products ..."
	if ((New-Object -ComObject Microsoft.Update.ServiceManager).Services | Where-Object -FilterScript {$_.ServiceID -eq "7971f918-a847-4430-9279-4a52d1efe18d"})
	{
		(New-Object -ComObject Microsoft.Update.ServiceManager).RemoveService("7971f918-a847-4430-9279-4a52d1efe18d")
	}
}

# Set power plan on "High performance"
Function HighPowerPlan {
	Write-Output "Setting High Power Plan ..."
	POWERCFG /SETACTIVE SCHEME_MIN
}

# Set power plan on "Balanced"
Function BalancedPowerPlan {
	Write-Output "Setting Balanced Power Plan ..."
	POWERCFG /SETACTIVE SCHEME_BALANCED
}

# Use the latest installed .NET runtime for all apps
Function EnableLatestInstalledNET {
	Write-Output "Enabling Latest Installed .NET ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\.NETFramework -Name OnlyUseLatestCLR -PropertyType DWord -Value 1 -Force
	New-ItemProperty -Path HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework -Name OnlyUseLatestCLR -PropertyType DWord -Value 1 -Force
}

# Do not use the latest installed .NET runtime for all apps
Function DisableLatestInstalledNET {
	Write-Output "Disabling Latest Installed .NET ..."
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\.NETFramework -Name OnlyUseLatestCLR -Force -ErrorAction Ignore
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework -Name OnlyUseLatestCLR -Force -ErrorAction Ignore
}

# Do not allow the computer to turn off the network adapters to save power
Function DisableNetworkAdaptersSavePower {
	Write-Output "Disabling Network Adapters Save Power ..."
	$Adapters = Get-NetAdapter -Physical | Get-NetAdapterPowerManagement | Where-Object -FilterScript {$_.AllowComputerToTurnOffDevice -ne "Unsupported"}
	foreach ($Adapter in $Adapters)
	{
		$Adapter.AllowComputerToTurnOffDevice = "Disabled"
		$Adapter | Set-NetAdapterPowerManagement
	}
}

# Allow the computer to turn off the network adapters to save power
Function EnableNetworkAdaptersSavePower {
	Write-Output "Enabling Network Adapters Save Power ..."
	$Adapters = Get-NetAdapter -Physical | Get-NetAdapterPowerManagement | Where-Object -FilterScript {$_.AllowComputerToTurnOffDevice -ne "Unsupported"}
	foreach ($Adapter in $Adapters)
	{
		$Adapter.AllowComputerToTurnOffDevice = "Enabled"
		$Adapter | Set-NetAdapterPowerManagement
	}
}

# Override for default input method: English
Function EnglishInputMethod {
	Write-Output "Setting English Input Method  ..."
	Set-WinDefaultInputMethodOverride -InputTip "0409:00000409"
}

# Override for default input method: use language list
Function DefaultInputMethod {
	Write-Output "Setting Default Input Method  ..."
	Remove-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name InputMethodOverride -Force -ErrorAction Ignore
}

# Save screenshots by pressing Win+PrtScr on the Desktop
Function DesktopWinPrtScrFolder {
	Write-Output "Setting Desktop Win+PrtScr Folder ..."
	$DesktopFolder = Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name Desktop
	New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name "{B7BEDE81-DF94-4682-A7D8-57A52620B86F}" -Type ExpandString -Value $DesktopFolder -Force
}

# Save screenshots by pressing Win+PrtScr in the Pictures folder
Function DefaultWinPrtScrFolder {
	Write-Output "Setting Default Win+PrtScr Folder ..."
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name "{B7BEDE81-DF94-4682-A7D8-57A52620B86F}" -Force -ErrorAction Ignore
}

# Run troubleshooter automatically, then notify me
Function AutomaticallyRecommendedTroubleshooting {
	Write-Output "Setting Automatically Recommended Troubleshooting ..."
	if (-not (Test-Path -Path HKLM:\SOFTWARE\Microsoft\WindowsMitigation))
	{
		New-Item -Path HKLM:\SOFTWARE\Microsoft\WindowsMitigation -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsMitigation -Name UserPreference -PropertyType DWord -Value 3 -Force

	# Set the OS level of diagnostic data gathering to "Optional diagnostic data"
	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack))
	{
		New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -PropertyType DWord -Value 3 -Force
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection -Name MaxTelemetryAllowed -PropertyType DWord -Value 3 -Force
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack -Name ShowedToastAtLevel -PropertyType DWord -Value 3 -Force
	#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Type DWORD -Value 1

	# Turn on Windows Error Reporting
	Get-ScheduledTask -TaskName QueueReporting | Enable-ScheduledTask
	Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Windows Error Reporting" -Name Disabled -Force -ErrorAction Ignore

	Get-Service -Name WerSvc | Set-Service -StartupType Manual
	Get-Service -Name WerSvc | Start-Service
}

# Ask me before running troubleshooter
Function DefaultRecommendedTroubleshooting {
	Write-Output "Setting Default Recommended Troubleshooting ..."
	if (-not (Test-Path -Path HKLM:\SOFTWARE\Microsoft\WindowsMitigation))
	{
		New-Item -Path HKLM:\SOFTWARE\Microsoft\WindowsMitigation -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsMitigation -Name UserPreference -PropertyType DWord -Value 2 -Force

	# Set the OS level of diagnostic data gathering to "Optional diagnostic data"
	if (-not (Test-Path -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack))
	{
		New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -PropertyType DWord -Value 3 -Force
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection -Name MaxTelemetryAllowed -PropertyType DWord -Value 3 -Force
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack -Name ShowedToastAtLevel -PropertyType DWord -Value 3 -Force
	#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Type DWORD -Value 1

	# Turn on Windows Error Reporting
	Get-ScheduledTask -TaskName QueueReporting | Enable-ScheduledTask
	Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Windows Error Reporting" -Name Disabled -Force -ErrorAction Ignore

	Get-Service -Name WerSvc | Set-Service -StartupType Manual
	Get-Service -Name WerSvc | Start-Service
}

# Launch folder windows in a separate process
Function EnableFoldersLaunchSeparateProcess {
	Write-Output "Enabling Folders Launch Separate Process ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name SeparateProcess -PropertyType DWord -Value 1 -Force
}

# Do not launch folder windows in a separate process
Function DisableFoldersLaunchSeparateProcess {
	Write-Output "Disabling Folders Launch Separate Process ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name SeparateProcess -PropertyType DWord -Value 0 -Force
}

# Disable and delete reserved storage after the next update installation
Function DisableReservedStorage {
	Write-Output "Disabling Reserved Storage ..."
	try
	{
		Set-WindowsReservedStorageState -State Disabled
	}
	catch [System.Runtime.InteropServices.COMException]
	{
		Write-Output "Error Disabling Reserved Storage ..." -ErrorAction SilentlyContinue
	}
}

# Enable reserved storage after the next update installation
Function EnableReservedStorage {
	Write-Output "Enabling Reserved Storage ..."
	Set-WindowsReservedStorageState -State Enabled
}

# Disable help lookup via F1
Function DisableF1HelpPage {
	Write-Output "Disabling F1 Help Page ..."
	if (-not (Test-Path -Path "HKCU:\SOFTWARE\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64"))
	{
		New-Item -Path "HKCU:\SOFTWARE\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64" -Force
	}
	New-ItemProperty -Path "HKCU:\SOFTWARE\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64" -Name "(default)" -PropertyType String -Value "" -Force
}

# Enable help lookup via F1
Function EnableF1HelpPage {
	Write-Output "Enabling F1 Help Page ..."
	Remove-Item -Path "HKCU:\SOFTWARE\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}" -Recurse -Force -ErrorAction Ignore
}

# Enable Num Lock at startup
Function EnableNumLock {
	Write-Output "Enabling NumLock at startup ..."
	New-ItemProperty -Path "Registry::HKEY_USERS\.DEFAULT\Control Panel\Keyboard" -Name InitialKeyboardIndicators -PropertyType String -Value 2147483650 -Force
}

# Disable Num Lock at startup
Function DisableNumLock {
	Write-Output "Disabling NumLock at startup ..."
	New-ItemProperty -Path "Registry::HKEY_USERS\.DEFAULT\Control Panel\Keyboard" -Name InitialKeyboardIndicators -PropertyType String -Value 2147483648 -Force
}

# Disable Caps Lock
Function DisableCapsLock {
	Write-Output "Disabling Caps Lock ..."
	New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout" -Name "Scancode Map" -PropertyType Binary -Value ([byte[]](0,0,0,0,0,0,0,0,2,0,0,0,0,0,58,0,0,0,0,0)) -Force
}

# Enable Caps Lock
Function EnableCapsLock {
	Write-Output "Enabling Caps Lock ..."
	Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout" -Name "Scancode Map" -Force -ErrorAction Ignore
}

# Turn off pressing the Shift key 5 times to turn Sticky keys
Function DisableStickyShift {
	Write-Output "Disabling Sticky Shift ..."
	New-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name Flags -PropertyType String -Value 506 -Force
}

# Turn on pressing the Shift key 5 times to turn Sticky keys
Function EnableStickyShift {
	Write-Output "Enabling Sticky Shift ..."
	New-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name Flags -PropertyType String -Value 510 -Force
}

# Don't use AutoPlay for all media and devices
Function DisableAutoplay {
	Write-Output "Disabling Autoplay ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers -Name DisableAutoplay -PropertyType DWord -Value 1 -Force
}

# Use AutoPlay for all media and devices
Function EnableAutoplay {
	Write-Output "Enabling Autoplay ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers -Name DisableAutoplay -PropertyType DWord -Value 0 -Force
}

# Disable thumbnail cache removal
Function DisableThumbnailCacheRemoval {
	Write-Output "Disabling Thumbnail Cache Removal ..."
	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" -Name Autorun -PropertyType DWord -Value 0 -Force
	New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" -Name Autorun -PropertyType DWord -Value 0 -Force
}

# Enable thumbnail cache removal
Function EnableThumbnailCacheRemoval {
	Write-Output "Enabling Thumbnail Cache Removal ..."
	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" -Name Autorun -PropertyType DWord -Value 3 -Force
	New-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" -Name Autorun -PropertyType DWord -Value 3 -Force
}

# Automatically saving my restartable apps and restart them when I sign back in
Function EnableSaveRestartableApps {
	Write-Output "Enabling Save Restartable Apps ..."
	New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name RestartApps -Value 1 -Force
}

# Turn off automatically saving my restartable apps and restart them when I sign back in
Function DisableSaveRestartableApps {
	Write-Output "Disabling Save Restartable Apps ..."
	New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name RestartApps -Value 0 -Force
}

# Enable "Network Discovery" and "File and Printers Sharing" for workgroup networks
Function EnableNetworkDiscovery {
	Write-Output "Enabling Network Discovery ..."
	$FirewallRules = @(
		# File and printer sharing		
		"@FirewallAPI.dll,-32752",

		# Network discovery
		"@FirewallAPI.dll,-28502"
	)
	if ((Get-CimInstance -ClassName CIM_ComputerSystem).PartOfDomain -eq $false)
	{
		Set-NetFirewallRule -Group $FirewallRules -Profile Private -Enabled True
		Set-NetFirewallRule -Profile Public, Private -Name FPS-SMB-In-TCP -Enabled True
		Set-NetConnectionProfile -NetworkCategory Private
	}
}

# Disable "Network Discovery" and "File and Printers Sharing" for workgroup networks
Function DisableNetworkDiscovery {
	Write-Output "Disabling Network Discovery ..."
	$FirewallRules = @(
		# File and printer sharing		
		"@FirewallAPI.dll,-32752",

		# Network discovery
		"@FirewallAPI.dll,-28502"
	)
	if ((Get-CimInstance -ClassName CIM_ComputerSystem).PartOfDomain -eq $false)
	{
		Set-NetFirewallRule -Group $FirewallRules -Profile Private -Enabled False
	}
}

# Automatically adjust active hours for me based on daily usage
Function AutomaticallyActiveHours {
	Write-Output "Setting Automatically Active Hours ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name SmartActiveHoursState -PropertyType DWord -Value 1 -Force
}

# Manually adjust active hours for me based on daily usage
Function ManuallyActiveHours {
	Write-Output "Setting Manually Active Hours ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name SmartActiveHoursState -PropertyType DWord -Value 0 -Force
}

# Restart as soon as possible to finish updating
Function EnableDeviceRestartAfterUpdate {
	Write-Output "Enabling Device Restart After Update ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name IsExpedited -PropertyType DWord -Value 1 -Force
}

# Don't restart as soon as possible to finish updating
Function DisableDeviceRestartAfterUpdate {
	Write-Output "Disabling Device Restart After Update ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name IsExpedited -PropertyType DWord -Value 0 -Force
}

# Prevent all internal SATA drives from showing up as removable media in the taskbar notification area
Function DisableSATADrivesRemovableMedia {
	Write-Output "Disabling SATA Drives Removable Media ..."
	New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\storahci\Parameters\Device -Name TreatAsInternalPort -Value @(0, 1, 2, 3, 4, 5) -Type MultiString -Force
}

# Show up all internal SATA drives as removeable media in the taskbar notification area
Function DefaultSATADrivesRemovableMedia {
	Write-Output "Default Setting SATA Drives Removable Media ..."
	Remove-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\storahci\Parameters\Device -Name TreatAsInternalPort -Force -ErrorAction Ignore
}

#endregion System

#region Start menu

# Hide recently added apps in the Start menu
Function HideRecentlyAddedApps {
	Write-Output "Hiding Recently Added Apps ..."
	if (-not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer))
	{
		New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name HideRecentlyAddedApps -PropertyType DWord -Value 1 -Force
}

# Show recently added apps in the Start menu
Function ShowRecentlyAddedApps {
	Write-Output "Showing Recently Added Apps ..."
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name HideRecentlyAddedApps -Force -ErrorAction Ignore
}

# Hide app suggestions in the Start menu
Function HideAppSuggestions {
	Write-Output "Hiding App Suggestions ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-338388Enabled -PropertyType DWord -Value 0 -Force
}

# Show app suggestions in the Start menu
Function ShowAppSuggestions {
	Write-Output "Showing App Suggestions ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-338388Enabled -PropertyType DWord -Value 1 -Force
}

# Run the Windows PowerShell shortcut from the Start menu as Administrator
Function ElevatedRunPowerShellShortcut {
	Write-Output "Setting Elevated Run PowerShell Shortcut ..."
	[byte[]]$bytes = Get-Content -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" -Encoding Byte -Raw
	$bytes[0x15] = $bytes[0x15] -bor 0x20
	Set-Content -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" -Value $bytes -Encoding Byte -Force
}

# Run the Windows PowerShell shortcut from the Start menu as user
Function NonElevatedRunPowerShellShortcut {
	Write-Output "Setting NonElevated Run PowerShell Shortcut ..."
	[byte[]]$bytes = Get-Content -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" -Encoding Byte -Raw
	$bytes[0x15] = $bytes[0x15] -bxor 0x20
	Set-Content -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" -Value $bytes -Encoding Byte -Force
}

#endregion Start menu

#region UWP apps

# Disable Cortana autostarting
Function DisableCortanaAutostart {
	Write-Output "Disabling Cortana Autostart ..."
	if (Get-AppxPackage -Name Microsoft.549981C3F5F10)
	{
		if (-not (Test-Path -Path "Registry::HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.549981C3F5F10_8wekyb3d8bbwe\CortanaStartupId"))
		{
			New-Item -Path "Registry::HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.549981C3F5F10_8wekyb3d8bbwe\CortanaStartupId" -Force
		}
		New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.549981C3F5F10_8wekyb3d8bbwe\CortanaStartupId" -Name State -PropertyType DWord -Value 1 -Force
	}
}

# Enable Cortana autostarting
Function EnableCortanaAutostart {
	Write-Output "Enabling Cortana Autostart ..."
	if (Get-AppxPackage -Name Microsoft.549981C3F5F10)
	{
		if (-not (Test-Path -Path "Registry::HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.549981C3F5F10_8wekyb3d8bbwe\CortanaStartupId"))
		{
			New-Item -Path "Registry::HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.549981C3F5F10_8wekyb3d8bbwe\CortanaStartupId" -Force
		}
		New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.549981C3F5F10_8wekyb3d8bbwe\CortanaStartupId" -Name State -PropertyType DWord -Value 2 -Force
	}
}

# Do not let UWP apps run in the background
Function DisableBackgroundUWPApps {
	Write-Output "Disabling Background UWP Apps ..."
	# Remove all excluded apps running in the background
	Get-ChildItem -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications | ForEach-Object -Process {
		Remove-ItemProperty -Path $_.PsPath -Name * -Force
	}

	# Exclude apps from the Bundle only
	$BackgroundAccessApplications = @((Get-ChildItem -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications).PSChildName)
	$ExcludedBackgroundAccessApplications = @()
	foreach ($BackgroundAccessApplication in $BackgroundAccessApplications)
	{
		if (Get-AppxPackage -PackageTypeFilter Bundle -AllUsers | Where-Object -FilterScript {$_.PackageFamilyName -eq $BackgroundAccessApplication})
		{
			$ExcludedBackgroundAccessApplications += $BackgroundAccessApplication
		}
	}

	Get-ChildItem -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications | Where-Object -FilterScript {$_.PSChildName -in $ExcludedBackgroundAccessApplications} | ForEach-Object -Process {
		New-ItemProperty -Path $_.PsPath -Name Disabled -PropertyType DWord -Value 1 -Force
		New-ItemProperty -Path $_.PsPath -Name DisabledByUser -PropertyType DWord -Value 1 -Force
	}

	# Open the "Background apps" page
	Start-Process -FilePath ms-settings:privacy-backgroundapps
}

# Let all UWP apps run in the background
Function EnableBackgroundUWPApps {
	Write-Output "Enabling Background UWP Apps ..."
	Get-ChildItem -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications | ForEach-Object -Process {
		Remove-ItemProperty -Path $_.PsPath -Name * -Force
	}
}

#endregion UWP apps

#region Gaming

# Disable Xbox Game Bar
Function DisableXboxGameBar {
	Write-Output "Disabling Xbox Game Bar ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR -Name AppCaptureEnabled -PropertyType DWord -Value 0 -Force
	New-ItemProperty -Path HKCU:\System\GameConfigStore -Name GameDVR_Enabled -PropertyType DWord -Value 0 -Force
}

# Enable Xbox Game Bar
Function EnableXboxGameBar {
	Write-Output "Enabling Xbox Game Bar ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR -Name AppCaptureEnabled -PropertyType DWord -Value 1 -Force
	New-ItemProperty -Path HKCU:\System\GameConfigStore -Name GameDVR_Enabled -PropertyType DWord -Value 1 -Force
}

# Disable Xbox Game Bar tips
Function DisableXboxGameTips {
	Write-Output "Disabling Xbox Game Tips ..."
	if ((Get-AppxPackage -Name Microsoft.XboxGamingOverlay) -or (Get-AppxPackage -Name Microsoft.GamingApp))
	{
		New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\GameBar -Name ShowStartupPanel -PropertyType DWord -Value 0 -Force
	}
}

# Enable Xbox Game Bar tips
Function EnableXboxGameTips {
	Write-Output "Enabling Xbox Game Tips ..."
	if ((Get-AppxPackage -Name Microsoft.XboxGamingOverlay) -or (Get-AppxPackage -Name Microsoft.GamingApp))
	{
		New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\GameBar -Name ShowStartupPanel -PropertyType DWord -Value 1 -Force
	}
}

# Enable hardware-accelerated GPU scheduling
Function EnableGPUScheduling {
	Write-Output "Enabling GPU Scheduling ..."
	if (Get-CimInstance -ClassName CIM_VideoController | Where-Object -FilterScript {($_.AdapterDACType -ne "Internal") -and ($null -ne $_.AdapterDACType)})
	{
		# Determining whether an OS is not installed on a virtual machine
		if ((Get-CimInstance -ClassName CIM_ComputerSystem).Model -notmatch "Virtual")
		{
			# Checking whether a WDDM verion is 2.7 or higher
			$WddmVersion_Min = Get-ItemPropertyValue -Path HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\FeatureSetUsage -Name WddmVersion_Min
			if ($WddmVersion_Min -ge 2700)
			{
				New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" -Name HwSchMode -PropertyType DWord -Value 2 -Force
			}
		}
	}
}

# Disable hardware-accelerated GPU scheduling
Function DisableGPUScheduling {
	Write-Output "Disabling GPU Scheduling ..."
	New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" -Name HwSchMode -PropertyType DWord -Value 1 -Force
}

#endregion Gaming

#region Microsoft Defender & Security

# Enable Microsoft Defender Exploit Guard network protection
Function EnableNetworkProtection {
	Write-Output "Enabling Network Protection ..."
	if ((Get-MpComputerStatus).AntivirusEnabled -eq $true)
	{
		Set-MpPreference -EnableNetworkProtection Enabled
	}
}

# Disable Microsoft Defender Exploit Guard network protection
Function DisableNetworkProtection {
	Write-Output "Disabling Network Protection ..."
	if ((Get-MpComputerStatus).AntivirusEnabled -eq $true)
	{
		Set-MpPreference -EnableNetworkProtection Disabled
	}
}

# Enable detection for potentially unwanted applications and block them
Function EnablePUAppsDetection {
	Write-Output "Enabling PU Apps Detection ..."
	if ((Get-MpComputerStatus).AntivirusEnabled -eq $true)
	{
		Set-MpPreference -PUAProtection Enabled
	}
}

# Disable detection for potentially unwanted applications and block them
Function DisablePUAppsDetection {
	Write-Output "Disabling PU Apps Detection ..."
	if ((Get-MpComputerStatus).AntivirusEnabled -eq $true)
	{
		Set-MpPreference -PUAProtection Disabled
	}
}

# Enable sandboxing for Microsoft Defender
Function EnableDefenderSandbox {
	Write-Output "Enabling Defender Sandbox ..."
	if ((Get-MpComputerStatus).AntivirusEnabled -eq $true)
	{
		setx /M MP_FORCE_USE_SANDBOX 1
	}
}

# Disable sandboxing for Microsoft Defender
Function DisableDefenderSandbox {
	Write-Output "Disabling Defender Sandbox ..."
	if ((Get-MpComputerStatus).AntivirusEnabled -eq $true)
	{
		setx /M MP_FORCE_USE_SANDBOX 0
	}
}

# Enable events auditing generated when a process is created (starts)
Function EnableAuditProcess {
	Write-Output "Enabling Audit Process ..."
	auditpol /set /subcategory:"{0CCE922B-69AE-11D9-BED3-505054503030}" /success:enable /failure:enable
}

# Disable events auditing generated when a process is created (starts)
Function DisableAuditProcess {
	Write-Output "Disabling Audit Process ..."
	auditpol /set /subcategory:"{0CCE922B-69AE-11D9-BED3-505054503030}" /success:disable /failure:disable
}

# Include command line in process creation events
Function EnableCommandLineProcessAudit {
	Write-Output "Enabling Command Line Process Audit ..."
	# Enable events auditing generated when a process is created (starts)
	auditpol /set /subcategory:"{0CCE922B-69AE-11D9-BED3-505054503030}" /success:enable /failure:enable
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit -Name ProcessCreationIncludeCmdLine_Enabled -PropertyType DWord -Value 1 -Force
	#Set-Policy -Scope Computer -Path SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit -Name ProcessCreationIncludeCmdLine_Enabled -Type DWORD -Value 1

}

# Do not include command line in process creation events
Function DisableCommandLineProcessAudit {
	Write-Output "Disabling Command Line Process Audit ..."
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit -Name ProcessCreationIncludeCmdLine_Enabled -Force -ErrorAction Ignore
	#Set-Policy -Scope Computer -Path SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit -Name ProcessCreationIncludeCmdLine_Enabled -Type CLEAR
}

# Create the "Process Creation" Event Viewer сustom view to log the executed processes and their arguments
Function EnableEventViewerCustomView {
	Write-Output "Enabling Event Viewer Custom View ..."
	# Enable events auditing generated when a process is created (starts)
	auditpol /set /subcategory:"{0CCE922B-69AE-11D9-BED3-505054503030}" /success:enable /failure:enable

	# Include command line in process creation events
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit -Name ProcessCreationIncludeCmdLine_Enabled -PropertyType DWord -Value 1 -Force
	#Set-Policy -Scope Computer -Path SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit -Name ProcessCreationIncludeCmdLine_Enabled -Type DWORD -Value 1

	$XML = @"
<ViewerConfig>
	<QueryConfig>
		<QueryParams>
			<UserQuery />
		</QueryParams>
		<QueryNode>
			<Name>$($Localization.EventViewerCustomViewName)</Name>
			<Description>$($Localization.EventViewerCustomViewDescription)</Description>
			<QueryList>
				<Query Id="0" Path="Security">
					<Select Path="Security">*[System[(EventID=4688)]]</Select>
				</Query>
			</QueryList>
		</QueryNode>
	</QueryConfig>
</ViewerConfig>
"@

	if (-not (Test-Path -Path "$env:ProgramData\Microsoft\Event Viewer\Views"))
	{
		New-Item -Path "$env:ProgramData\Microsoft\Event Viewer\Views" -ItemType Directory -Force
	}

	# Save ProcessCreation.xml in the UTF-8 with BOM encoding
	Set-Content -Path "$env:ProgramData\Microsoft\Event Viewer\Views\ProcessCreation.xml" -Value $XML -Encoding UTF8 -Force
}

# Remove the "Process Creation" Event Viewer custom view
Function DisableEventViewerCustomView {
	Write-Output "Disabling Event Viewer Custom View ..."
	Remove-Item -Path "$env:ProgramData\Microsoft\Event Viewer\Views\ProcessCreation.xml" -Force -ErrorAction Ignore
}

# Enable logging for all Windows PowerShell modules
Function EnablePowerShellModulesLogging {
	Write-Output "Enabling PowerShell Modules Logging ..."
	if (-not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames))
	{
		New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging -Name EnableModuleLogging -PropertyType DWord -Value 1 -Force
	New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames -Name * -PropertyType String -Value * -Force
	#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging -Name EnableModuleLogging -Type DWORD -Value 1
	#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames -Name * -Type SZ -Value *
		
}

# Disable logging for all Windows PowerShell modules
Function DisablePowerShellModulesLogging {
	Write-Output "Disabling PowerShell Modules Logging ..."
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging -Name EnableModuleLogging -Force -ErrorAction Ignore
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames -Name * -Force -ErrorAction Ignore
	#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging -Name EnableModuleLogging -Type CLEAR
}

# Enable logging for all PowerShell scripts input to the Windows PowerShell event log
Function EnablePowerShellScriptsLogging {
	Write-Output "Enabling PowerShell Scripts Logging ..."
	if (-not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging))
	{
		New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging -Name EnableScriptBlockLogging -PropertyType DWord -Value 1 -Force
	#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging -Name EnableScriptBlockLogging -Type DWORD -Value 1
}

# Disable logging for all PowerShell scripts input to the Windows PowerShell event log
Function DisablePowerShellScriptsLogging {
	Write-Output "Disabling PowerShell Scripts Logging ..."
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging -Name EnableScriptBlockLogging -Force -ErrorAction Ignore
	#Set-Policy -Scope Computer -Path SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging -Name EnableScriptBlockLogging -Type CLEAR
}

# Disable apps and files checking within Microsoft Defender SmartScreen
Function DisableAppsSmartScreen {
	Write-Output "Disabling Apps SmartScreen ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name SmartScreenEnabled -PropertyType String -Value Off -Force
}

# Enable apps and files checking within Microsoft Defender SmartScreen
Function EnableAppsSmartScreen {
	Write-Output "Enabling Apps SmartScreen ..."
	New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name SmartScreenEnabled -PropertyType String -Value Warn -Force
}

# Microsoft Defender SmartScreen doesn't marks downloaded files from the Internet as unsafe
Function DisableSaveZoneInformation {
	Write-Output "Disabling Save Zone Information ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments -Name SaveZoneInformation -PropertyType DWord -Value 1 -Force
	#Set-Policy -Scope User -Path Software\Microsoft\Windows\CurrentVersion\Policies\Attachments -Name SaveZoneInformation -Type DWORD -Value 1
}

# Microsoft Defender SmartScreen marks downloaded files from the Internet as unsafe
Function EnableSaveZoneInformation {
	Write-Output "Enabling Save Zone Information ..."
	Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments -Name SaveZoneInformation -Force -ErrorAction Ignore
	#Set-Policy -Scope User -Path Software\Microsoft\Windows\CurrentVersion\Policies\Attachments -Name SaveZoneInformation -Type CLEAR
}

# Disable Windows Script Host
Function DisableWindowsScriptHost {
	Write-Output "Disabling Windows Script Host ..."
	if (-not (Test-Path -Path "HKCU:\SOFTWARE\Microsoft\Windows Script Host\Settings"))
	{
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows Script Host\Settings" -Force
	}
	New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows Script Host\Settings" -Name Enabled -PropertyType DWord -Value 0 -Force
}

# Enable Windows Script Host
Function EnableWindowsScriptHost {
	Write-Output "Enabling Windows Script Host ..."
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows Script Host\Settings" -Name Enabled -Force -ErrorAction Ignore
}

# Disable Windows Sandbox
Function DisableWindowsSandbox {
	Write-Output "Disabling Windows Sandbox ..."
	if (Get-WindowsEdition -Online | Where-Object -FilterScript {$_.Edition -eq "Professional" -or $_.Edition -like "Enterprise*"})
	{
		# Checking whether x86 virtualization is enabled in the firmware
		if ((Get-CimInstance -ClassName CIM_Processor).VirtualizationFirmwareEnabled -eq $true)
		{
			Disable-WindowsOptionalFeature -FeatureName Containers-DisposableClientVM -Online -NoRestart
		}
		else
		{
			try
			{
				# Determining whether Hyper-V is enabled
				if ((Get-CimInstance -ClassName CIM_ComputerSystem).HypervisorPresent -eq $true)
				{
					Disable-WindowsOptionalFeature -FeatureName Containers-DisposableClientVM -Online -NoRestart
				}
			}
			catch [System.Exception]
			{
				Write-Error -Message $Localization.EnableHardwareVT -ErrorAction SilentlyContinue
			}
		}
	}
}

# Enable Windows Sandbox
Function EnableWindowsSandbox {
	Write-Output "Enabling Windows Sandbox ..."
	if (Get-WindowsEdition -Online | Where-Object -FilterScript {$_.Edition -eq "Professional" -or $_.Edition -like "Enterprise*"})
	{
		# Checking whether x86 virtualization is enabled in the firmware
		if ((Get-CimInstance -ClassName CIM_Processor).VirtualizationFirmwareEnabled -eq $true)
		{
			Enable-WindowsOptionalFeature -FeatureName Containers-DisposableClientVM -All -Online -NoRestart
		}
		else
		{
			try
			{
				# Determining whether Hyper-V is enabled
				if ((Get-CimInstance -ClassName CIM_ComputerSystem).HypervisorPresent -eq $true)
				{
					Enable-WindowsOptionalFeature -FeatureName Containers-DisposableClientVM -All -Online -NoRestart
				}
			}
			catch [System.Exception]
			{
				Write-Error -Message $Localization.EnableHardwareVT -ErrorAction SilentlyContinue
			}
		}
	}
}

#endregion Microsoft Defender & Security

#region Context menu

# Show the "Extract all" item in the Windows Installer (.msi) context menu
Function ShowMSIExtractContext {
	Write-Output "Showing MSI Extract Context ..."
	if (-not (Test-Path -Path Registry::HKEY_CLASSES_ROOT\Msi.Package\shell\Extract\Command))
	{
		New-Item -Path Registry::HKEY_CLASSES_ROOT\Msi.Package\shell\Extract\Command -Force
	}
	$Value = "{0}" -f "msiexec.exe /a `"%1`" /qb TARGETDIR=`"%1 extracted`""
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Msi.Package\shell\Extract\Command -Name "(default)" -PropertyType String -Value $Value -Force
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Msi.Package\shell\Extract -Name MUIVerb -PropertyType String -Value "@shell32.dll,-37514" -Force
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Msi.Package\shell\Extract -Name Icon -PropertyType String -Value "shell32.dll,-16817" -Force
}

# Hide the "Extract all" item from the Windows Installer (.msi) context menu
Function HideMSIExtractContext {
	Write-Output "Hiding MSI Extract Context ..."
	Remove-Item -Path Registry::HKEY_CLASSES_ROOT\Msi.Package\shell\Extract -Recurse -Force -ErrorAction Ignore
}

# Show the "Install" item in the Cabinet (.cab) filenames extensions context menu
Function ShowCABInstallContext {
	Write-Output "Showing CAB Install Context ..."
	if (-not (Test-Path -Path Registry::HKEY_CLASSES_ROOT\CABFolder\Shell\RunAs\Command))
	{
		New-Item -Path Registry::HKEY_CLASSES_ROOT\CABFolder\Shell\RunAs\Command -Force
	}
	$Value = "{0}" -f "cmd /c DISM.exe /Online /Add-Package /PackagePath:`"%1`" /NoRestart & pause"
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\CABFolder\Shell\RunAs\Command -Name "(default)" -PropertyType String -Value $Value -Force
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\CABFolder\Shell\RunAs -Name MUIVerb -PropertyType String -Value "@shell32.dll,-10210" -Force
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\CABFolder\Shell\RunAs -Name HasLUAShield -PropertyType String -Value "" -Force
}

# Hide the "Install" item from the Cabinet (.cab) filenames extensions context menu
Function HideCABInstallContext {
	Write-Output "Hiding CAB Install Context ..."
	Remove-Item -Path Registry::HKEY_CLASSES_ROOT\CABFolder\Shell\RunAs -Recurse -Force -ErrorAction Ignore
}

# Show the "Run as different user" item in the .exe filename extensions context menu
Function ShowRunAsDifferentUserContext {
	Write-Output "Showing Run As Different User Context ..."
	Remove-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\exefile\shell\runasuser -Name Extended -Force -ErrorAction Ignore
}

# Hide the "Run as different user" item from the .exe filename extensions context menu
Function HideRunAsDifferentUserContext {
	Write-Output "Hiding Run As Different User Context ..."
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\exefile\shell\runasuser -Name Extended -PropertyType String -Value "" -Force
}

# Hide the "Cast to Device" item from the media files and folders context menu
Function HideCastToDeviceContext {
	Write-Output "Hiding Cast To Device Context ..."
	if (-not (Test-Path -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked"))
	{
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -Force
	}
	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -Name "{7AD84985-87B4-4a16-BE58-8B72A5B390F7}" -PropertyType String -Value "Play to menu" -Force
}

# Show the "Cast to Device" item in the media files and folders context menu
Function ShowCastToDeviceContext {
	Write-Output "Showing Cast To Device Context ..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -Name "{7AD84985-87B4-4a16-BE58-8B72A5B390F7}" -Force -ErrorAction Ignore
}

# Hide the "Share" item from the context menu
Function HideShareContext {
	Write-Output "Hiding Share Context ..."
	Remove-Item -Path "Registry::HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" -Recurse -Force -ErrorAction Ignore
}

# Show the "Share" item in the context menu
Function ShowShareContext {
	Write-Output "Showing Share Context ..."
	if (-not (Test-Path -Path "Registry::HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing"))
	{
		New-Item -Path "Registry::HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" -Force
	}
	New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" -Name "(default)" -PropertyType String -Value "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" -Force		
}

# Hide the "Edit with Paint 3D" item from the media files context menu
Function HideEditWithPaint3DContext {
	Write-Output "Hiding Edit With Paint3D Context ..."
	if (Get-AppxPackage -Name Microsoft.MSPaint)
	{
		$Extensions = @(".bmp", ".gif", ".jpe", ".jpeg", ".jpg", ".png", ".tif", ".tiff")
		foreach ($Extension in $Extensions)
		{
			New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\SystemFileAssociations\$Extension\Shell\3D Edit" -Name ProgrammaticAccessOnly -PropertyType String -Value "" -Force
		}
	}
}

# Show the "Edit with Paint 3D" item in the media files context menu
Function ShowEditWithPaint3DContext {
	Write-Output "Showing Edit With Paint3D Context ..."
	if (Get-AppxPackage -Name Microsoft.MSPaint)
	{
		$Extensions = @(".bmp", ".gif", ".jpe", ".jpeg", ".jpg", ".png", ".tif", ".tiff")
		foreach ($Extension in $Extensions)
		{
			Remove-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\SystemFileAssociations\$Extension\Shell\3D Edit" -Name ProgrammaticAccessOnly -Force -ErrorAction Ignore
		}
	}
}

# Hide the "Edit with Photos" item from the media files context menu
Function HideEditWithPhotosContext {
	Write-Output "Hiding Edit With Photos Context ..."
	if (Get-AppxPackage -Name Microsoft.Windows.Photos)
	{
		New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellEdit -Name ProgrammaticAccessOnly -PropertyType String -Value "" -Force
	}
}

# Show the "Edit with Photos" item in the media files context menu
Function ShowEditWithPhotosContext {
	Write-Output "Showing Edit With Photos Context ..."
	if (Get-AppxPackage -Name Microsoft.Windows.Photos)
	{
		Remove-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellEdit -Name ProgrammaticAccessOnly -Force -ErrorAction Ignore
	}
}

# Hide the "Create a new video" item from the media files context menu
Function HideCreateANewVideoContext {
	Write-Output "Hiding Create A New Video Context ..."
	if (Get-AppxPackage -Name Microsoft.Windows.Photos)
	{
		New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellCreateVideo -Name ProgrammaticAccessOnly -PropertyType String -Value "" -Force
	}
}

# Show the "Create a new video" item in the media files context menu
Function ShowCreateANewVideoContext {
	Write-Output "Showing Create A New Video Context ..."
	if (Get-AppxPackage -Name Microsoft.Windows.Photos)
	{
		Remove-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\AppX43hnxtbyyps62jhe9sqpdzxn1790zetc\Shell\ShellCreateVideo -Name ProgrammaticAccessOnly -Force -ErrorAction Ignore
	}
}

# Hide the "Edit" item from the images context menu
Function HideImagesEditContext {
	Write-Output "Hiding Images Edit Context ..."
	if ((Get-WindowsCapability -Online -Name "Microsoft.Windows.MSPaint*").State -eq "Installed")
	{
		New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell\edit -Name ProgrammaticAccessOnly -PropertyType String -Value "" -Force
	}
}

# Show the "Edit" item in the images context menu
Function ShowImagesEditContext {
	Write-Output "Showing Images Edit Context ..."
	if ((Get-WindowsCapability -Online -Name "Microsoft.Windows.MSPaint*").State -eq "Installed")
	{
		Remove-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell\edit -Name ProgrammaticAccessOnly -Force -ErrorAction Ignore
	}
}

# Hide the "Print" item from the .bat and .cmd context menu
Function HidePrintCMDContext {
	Write-Output "Hiding Print CMD Context ..."
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\batfile\shell\print -Name ProgrammaticAccessOnly -PropertyType String -Value "" -Force
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\cmdfile\shell\print -Name ProgrammaticAccessOnly -PropertyType String -Value "" -Force
}

# Show the "Print" item in the .bat and .cmd context menu
Function ShowPrintCMDContext {
	Write-Output "Showing Print CMD Context ..."
	Remove-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\batfile\shell\print -Name ProgrammaticAccessOnly -Force -ErrorAction Ignore
	Remove-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\cmdfile\shell\print -Name ProgrammaticAccessOnly -Force -ErrorAction Ignore
}

# Hide the "Include in Library" item from the folders and drives context menu
Function HideIncludeInLibraryContext {
	Write-Output "Hiding Include In Library Context ..."
	New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Folder\ShellEx\ContextMenuHandlers\Library Location" -Name "(default)" -PropertyType String -Value "-{3dad6c5d-2167-4cae-9914-f99e41c12cfa}" -Force
}


# Show the "Include in Library" item in the folders and drives context menu
Function ShowIncludeInLibraryContext {
	Write-Output "Showing Include In Library Context ..."
	New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\Folder\ShellEx\ContextMenuHandlers\Library Location" -Name "(default)" -PropertyType String -Value "{3dad6c5d-2167-4cae-9914-f99e41c12cfa}" -Force
}

# Hide the "Send to" item from the folders context menu
Function HideSendToContext {
	Write-Output "Hiding Send To Context ..."
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo -Name "(default)" -PropertyType String -Value "-{7BA4C740-9E81-11CF-99D3-00AA004AE837}" -Force
}

# Show the "Send to" item in the folders context menu
Function ShowSendToContext {
	Write-Output "Showing Send To Context ..."
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo -Name "(default)" -PropertyType String -Value "{7BA4C740-9E81-11CF-99D3-00AA004AE837}" -Force
}

# Hide the "Turn on BitLocker" item from the drives context menu
Function HideBitLockerContext {
	Write-Output "Hiding BitLocker Context ..."
	if (Get-WindowsEdition -Online | Where-Object -FilterScript {($_.Edition -eq "Professional") -or ($_.Edition -like "Enterprise*")})
	{
		if ((Get-BitLockerVolume).ProtectionStatus -eq "Off")
		{
			New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Drive\shell\encrypt-bde-elev -Name ProgrammaticAccessOnly -PropertyType String -Value "" -Force
		}
	}
}

# Show the "Turn on BitLocker" item in the drives context menu
Function ShowBitLockerContext {
	Write-Output "Showing BitLocker Context ..."
	if (Get-WindowsEdition -Online | Where-Object -FilterScript {$_.Edition -eq "Professional" -or $_.Edition -like "Enterprise*"})
	{
		Remove-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Drive\shell\encrypt-bde-elev -Name ProgrammaticAccessOnly -Force -ErrorAction Ignore
	}
}

# Hide the "Bitmap image" item from the "New" context menu
Function HideBitmapImageNewContext {
	Write-Output "Hiding Bitmap Image New Context ..."
	if ((Get-WindowsCapability -Online -Name "Microsoft.Windows.MSPaint*").State -eq "Installed")
	{
		Remove-Item -Path Registry::HKEY_CLASSES_ROOT\.bmp\ShellNew -Force -ErrorAction Ignore
	}
}

# Show the "Bitmap image" item to the "New" context menu
Function ShowBitmapImageNewContext {
	Write-Output "Showing Bitmap Image New Context ..."
	if ((Get-WindowsCapability -Online -Name "Microsoft.Windows.MSPaint*").State -eq "Installed")
	{
		if (-not (Test-Path -Path Registry::HKEY_CLASSES_ROOT\.bmp\ShellNew))
		{
			New-Item -Path Registry::HKEY_CLASSES_ROOT\.bmp\ShellNew -Force
		}
		New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\.bmp\ShellNew -Name ItemName -PropertyType ExpandString -Value "@%systemroot%\system32\mspaint.exe,-59414" -Force
		New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\.bmp\ShellNew -Name NullFile -PropertyType String -Value "" -Force
	}
	else
	{
		try
		{
			# Check the internet connection
			$Parameters = @{
				Uri              = "https://www.google.com"
				Method           = "Head"
				DisableKeepAlive = $true
				UseBasicParsing  = $true
			}
			if (-not (Invoke-WebRequest @Parameters).StatusDescription)
			{
				return
			}

			Write-Information -MessageData "" -InformationAction Continue
			Write-Verbose -Message $Localization.Patient -Verbose

			Get-WindowsCapability -Online -Name "Microsoft.Windows.MSPaint*" | Add-WindowsCapability -Online
		}
		catch [System.Net.WebException]
		{
			Write-Warning -Message $Localization.NoInternetConnection
			Write-Error -Message $Localization.NoInternetConnection -ErrorAction SilentlyContinue

			Write-Error -Message ($Localization.RestartFunction -f $MyInvocation.Line) -ErrorAction SilentlyContinue
		}
	}
}

# Hide the "Rich Text Document" item from the "New" context menu
Function HideRichTextDocumentNewContext {
	Write-Output "Hiding Rich Text Document New Context ..."
	if ((Get-WindowsCapability -Online -Name "Microsoft.Windows.WordPad*").State -eq "Installed")
	{
		Remove-Item -Path Registry::HKEY_CLASSES_ROOT\.rtf\ShellNew -Force -ErrorAction Ignore
	}
}

# Show the "Rich Text Document" item to the "New" context menu
Function ShowRichTextDocumentNewContext {
	Write-Output "Showing Rich Text Document New Context ..."
	if ((Get-WindowsCapability -Online -Name "Microsoft.Windows.WordPad*").State -eq "Installed")
	{
		if (-not (Test-Path -Path Registry::HKEY_CLASSES_ROOT\.rtf\ShellNew))
		{
			New-Item -Path Registry::HKEY_CLASSES_ROOT\.rtf\ShellNew -Force
		}
		New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\.rtf\ShellNew -Name Data -PropertyType String -Value "{\rtf1}" -Force
		New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\.rtf\ShellNew -Name ItemName -PropertyType ExpandString -Value "@%ProgramFiles%\Windows NT\Accessories\WORDPAD.EXE,-213" -Force
	}
	else
	{
		try
		{
			# Check the internet connection
			$Parameters = @{
				Uri              = "https://www.google.com"
				Method           = "Head"
				DisableKeepAlive = $true
				UseBasicParsing  = $true
			}
			if (-not (Invoke-WebRequest @Parameters).StatusDescription)
			{
				return
			}
			Write-Information -MessageData "" -InformationAction Continue
			Write-Verbose -Message $Localization.Patient -Verbose

			Get-WindowsCapability -Online -Name "Microsoft.Windows.WordPad*" | Add-WindowsCapability -Online
		}
		catch [System.Net.WebException]
		{
			Write-Warning -Message $Localization.NoInternetConnection
			Write-Error -Message $Localization.NoInternetConnection -ErrorAction SilentlyContinue

			Write-Error -Message ($Localization.RestartFunction -f $MyInvocation.Line) -ErrorAction SilentlyContinue
		}
	}
}

# Hide the "Compressed (zipped) Folder" item from the "New" context menu
Function HideCompressedFolderNewContext {
	Write-Output "Hiding Compressed Folder New Context ..."
	Remove-Item -Path Registry::HKEY_CLASSES_ROOT\.zip\CompressedFolder\ShellNew -Force -ErrorAction Ignore
}

# Show the "Compressed (zipped) Folder" item to the "New" context menu
Function ShowCompressedFolderNewContext {
	Write-Output "Showing Compressed Folder New Context ..."
	if (-not (Test-Path -Path Registry::HKEY_CLASSES_ROOT\.zip\CompressedFolder\ShellNew))
	{
		New-Item -Path Registry::HKEY_CLASSES_ROOT\.zip\CompressedFolder\ShellNew -Force
	}
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\.zip\CompressedFolder\ShellNew -Name Data -PropertyType Binary -Value ([byte[]](80,75,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)) -Force
	New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\.zip\CompressedFolder\ShellNew -Name ItemName -PropertyType ExpandString -Value "@%SystemRoot%\system32\zipfldr.dll,-10194" -Force
}

# Enable the "Open", "Print", and "Edit" items if more than 15 files selected
Function EnableMultipleInvokeContext {
	Write-Output "Enabling Multiple Invoke Context ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name MultipleInvokePromptMinimum -PropertyType DWord -Value 300 -Force
}

# Disable the "Open", "Print", and "Edit" items if more than 15 files selected
Function DisableMultipleInvokeContext {
	Write-Output "Disabling Multiple Invoke Context ..."
	Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name MultipleInvokePromptMinimum -Force -ErrorAction Ignore
}

# Hide the "Look for an app in the Microsoft Store" item in the "Open with" dialog
Function HideUseStoreOpenWith {
	Write-Output "Hiding Use Store Open With ..."
	if (-not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer))
	{
		New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Force
	}
	New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name NoUseStoreOpenWith -PropertyType DWord -Value 1 -Force
}

# Show the "Look for an app in the Microsoft Store" item in the "Open with" dialog
Function ShowUseStoreOpenWith {
	Write-Output "Showing Use Store Open With ..."
	Remove-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name NoUseStoreOpenWith -Force -ErrorAction Ignore
}

#endregion Context menu

#region Other

# Hide the search on the taskbar
Function HideTaskbarSearch {
	Write-Output "Hiding Taskbar Search ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name SearchboxTaskbarMode -PropertyType DWord -Value 0 -Force
}

# Show the search icon on the taskbar
Function SearchIconTaskbarSearch {
	Write-Output "Showing Search Icon Taskbar Search ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name SearchboxTaskbarMode -PropertyType DWord -Value 1 -Force
}

# Show the search box on the taskbar
Function SearchBoxTaskbarSearch {
	Write-Output "Showing Search Box Taskbar Search ..."
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name SearchboxTaskbarMode -PropertyType DWord -Value 2 -Force
}

# Taskbar Always combine, hide labels
Function AlwaysCombineHideLabelsTaskbar {
	Write-Output "Setting Taskbar to Always combine, hide labels ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarGlomLevel -PropertyType DWord -Value 0 -Force
}

# Taskbar Combine when taskbar is full
Function CombineWhenFullTaskbar {
	Write-Output "Setting Taskbar to combine when taskbar is full ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarGlomLevel -PropertyType DWord -Value 1 -Force
}

# Taskbar Never combine
Function NeverCombineTaskbar {
	Write-Output "Setting Taskbar to never combine ..."
	New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarGlomLevel -PropertyType DWord -Value 2 -Force
}

# View the Control Panel icons by category
Function CategoryControlPanelView {
	Write-Output "Setting Category Control Panel View ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Name AllItemsIconView -PropertyType DWord -Value 0 -Force
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Name StartupPage -PropertyType DWord -Value 0 -Force
}

# View the Control Panel icons by large icons
Function LargeIconsControlPanelView {
	Write-Output "Setting Large Icons Control Panel View ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Name AllItemsIconView -PropertyType DWord -Value 0 -Force
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Name StartupPage -PropertyType DWord -Value 1 -Force
}

# View the Control Panel icons by small icons
Function SmallIconsControlPanelView {
	Write-Output "Setting Small Icons Control Panel View ..."
	if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel))
	{
		New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Force
	}
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Name AllItemsIconView -PropertyType DWord -Value 1 -Force
	New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Name StartupPage -PropertyType DWord -Value 1 -Force
}

#endregion Other


# Holder for None (Must keep)
Function None {
}

# Relaunch the script with administrator privileges
Function RequireAdmin {
	If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
		Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
		Exit
	}
}

# Create Restore Point
Function CreateRestorePoint {
  Write-Output "Creating Restore Point incase something bad happens"
  Enable-ComputerRestore -Drive "C:\"
  Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"
}

# Normalize path to preset file
$preset = ""
$PSCommandArgs = $args
If ($args -And $args[0].ToLower() -eq "-preset") {
	$preset = Resolve-Path $($args | Select-Object -Skip 1)
	$PSCommandArgs = "-preset `"$preset`""
}

# Load function names from command line arguments or a preset file
If ($args) {
	$tweaks = $args
	If ($preset) {
		$tweaks = Get-Content $preset -ErrorAction Stop | ForEach { $_.Trim() } | Where { $_ -ne "" -and $_[0] -ne "#" }
	}
}

# Call the desired tweak functions
$tweaks | ForEach { Invoke-Expression $_ }
Read-Host -Prompt "Press Enter to exit"