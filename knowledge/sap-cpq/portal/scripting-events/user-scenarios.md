# User Scenarios | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/70e0f11b25b34806be42f9d86ced20e6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin


	
Registration and Login
	
User Scenarios
	
Script Plugin Troubleshooting
	
Alternatives to CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
User Scenarios

Here you can find the different user scenarios for using the SAP CPQ script plugin.

Create New Global Script

You can create the Python script similar to a normal file.

Note

You should create the Python script under the global scripts folder.

Modify Global Script

To modify the global script follow the steps below.

Go to the file explorer.

Open the Python script file. The file will open in editor mode.

Export and Import Configuration

Follow the steps below to export the configuration.

Go to the environment configuration.

Click Export.

Select the Configuration.

Click Ok.

Share the exported .cpqplugin file with other administrators along with the password.

Follow the steps below to import the configuration.

Go to the environment configuration.

Click Import.

Provide the .cpqplugin file along with the password..

Compare and Revert Local Changes

To compare the local changes, follow the steps below.

Go to the extension panel and click the modified script. The plugin displays the compare editor.

Note

The left side of the compare editor shows the server-side copy, and the right side of the editor shows the locally modified copy.

As both sides of the editor are editable, based on where you have made the changes, accept Left Changes or accept Right Changes.

If you want to revert the local changes (for example, modified scripts, properties, renamed script, or deleted script) that are not yet pushed to SAP CPQ, follow the steps below.

Go to the extension panel.

Click the Revert button based on your changes.

Validate Global Script

To validate the scripts, follow the steps below.

Go to the file explorer.

Open the Python script file. The file will open in editor mode.

Right-click on the editor and navigate to SAP CPQ  Validate Script .

Note

You can also use the shortcut  Shift + Alt + V . You can validate the entire script or a selected part of the script as well.

Attach Events to Global Scripts

To attach events to the global script, follow the steps below.

Go to the file explorer.

Open the Python script file. The file will open in editor mode.

Right-click the editor.

Navigate to SAP CPQ  Script properties.

Note

You can also use the shortcut Shift + Alt + P .

Update the properties or events.

Click Save.

Rename script

Follow the steps below to rename a global script.

Rename the Python file like a normal file from the editor.

Go to the extension changes panel. You can see the renamed script under the Ready To Delete or Rename section.

Click + next to the item to push the change to SAP CPQ. Selected items will move to the ready-to-push section.

Click Push. The changes will be pushed to SAP CPQ.

Note

If you are not logged in or if the script is renamed from the file system or any other editor, the script will be marked as Ready to Delete instead of Rename.

Push Changes to SAP CPQ

You can perform the steps below to push your changes to SAP CPQ.

Go to the extension changes panel.

Click + next to the item to push the change to SAP CPQ. Selected items will move to the ready-to-push section.

Click Push. The changes will be pushed to SAP CPQ.

Resolve Conflicts

While pushing the modified script to SAP CPQ, there can be a possibility that the scripts are already modified in SAP CPQ. The SAP CPQ script plugin will show a warning message. Follow the steps below to resolve the warning message.

Go to the extension panel.

In the Need user action section, search for the item.

Click the Mark Resolve button to manually resolve the conflict by modifying the script.

Note

You can also click Resolved to push the local change. This change will override the server, or the SAP CPQ change.

Follow the steps from Push Changes to SAP CPQ.

Delete Script

To delete the global script, follow the steps below.

Delete the Python file like a normal file from the editor.

Go to the extension change panel. You can see the deleted script under the Ready to Delete or Rename section.

Follow the steps from Push Changes to SAP CPQ.

Related Information
SAP CPQ script plugin
Registration and Login
Script Plugin Troubleshooting
On this page
Create New Global Script
Modify Global Script
Export and Import Configuration
Compare and Revert Local Changes
Validate Global Script
Attach Events to Global Scripts
Rename script
Push Changes to SAP CPQ
View all
Yes
No