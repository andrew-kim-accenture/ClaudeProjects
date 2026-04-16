# Responsive Design Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/d65a337b705c486d8ac1c7f3a52f71ea.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting


	
General UI Troubleshooting
	
Responsive Design Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
Responsive Design Troubleshooting

This section provides more information about common issues that may occur in relation to the responsive design, and ways to fix them.

Note

SAP CPQ no longer supports automatic logging of JavaScrip errors in the Log Page of SAP CPQ Setup. If you require JavaScript error logging, contact the SAP CPQ Support team to have the functionality enabled.

SAP CPQ’s responsive design (RD) templates are a powerful tool for adjusting the user interface to the client’s business model. However, sometimes it is necessary to apply fixes and corrections to RD templates or the accompanying CSS files. There are many factors that need to be considered when attempting to fix user interface issues in SAP CPQ. This topic details the ways in which you can isolate problematic responsive design templates and CSS files, as well as apply the necessary corrections.
Note

Prior knowledge of CSS, HTML, JavaScript and KnockoutJS is highly recommended for troubleshooting.

1. Localize the Issue - Core or Customized Templates

The first thing you need to do is check whether the issue is related to custom RD templates. To do this:

Open the page you wish to investigate.

Open the Developer Console in the second tab of your browser.

In Developer Console, select the Disable UI Customizations checkbox.

Navigate to the page where the problematic element is located and click Ctrl+F5 on keyboard.

This will enforce page content to reload and SAP CPQ will use only core/native RD templates and CSS files.

If the issue persists, then it is not related to UI customizations and you should look for the source of the problem elsewhere (custom calculations, scripts, rules and so on).

To revert the disabled UI customizations, go back to Developer Console, uncheck the Disable UI Customizations, navigate back to the page and click Ctrl+F5. If the issue is still there, then it is related to the customizations made to the page.

2. Narrow down the Issue to Element in Customized Template

Once you are certain that UI customizations are causing the issue, you need to narrow down the problem to a specific SAP CPQ segment/page (Configurator, Catalog, Cart and so on) and then to a specific HTML element.

Right-click on the problematic element and select Inspect from the dropdown list (the name of this button may vary depending on the web browser you are using).

Identify RD templates involved in the page content rendering Template names are in the HTML comment (between Begin src and End src).

It is important to note that RD templates are responsible for rendering segments (or sections) of a web page, therefore rendering a full-page content is a joint operation in which several templates (core or custom) are used. In the web page source (accessible via browser inspection feature) SAP CPQ stores names of the page sections and custom RD templates (if they are used) responsible for rendering content within a section.

Identify CSS files containing style options for HTML elements.

Once the problematic templates or CSS files are identified, you can proceed with applying the corrective measures.

3. Example - Custom RD Template Troubleshooting

In the following text, the solution for fixing the issue with undesired text displayed in the Cart page is provided:

Inspect the HTML element in which the problematic text is present. The problematic text is in the red box.

The name of the custom template potentially responsible for the issue (rendering Cart page section Items) is TroubleshootinExample.

Access Setup  UI Design  Responsive Templates. Here, you can look up responsive templates by their names. The following image contains code for the custom RD template which renders the Items section of the SAP CPQ Cart page.

To resolve the issue with unwanted text, you should apply corrective measures to the template code.

You can also see which user applied the problematic customization by accessing the Template Versions tab.

Furthermore, you can disable the custom template by deselecting the Default checkbox. By doing this, you are instructing SAP CPQ to use the core RD template instead of a custom one for rendering content in the given section. This approach is also useful for confirming that the template in question is indeed the problematic one, as the template’s code should no longer be visible on the web page once it is deselected.

4. Troubleshooting when the Issue is Not in Customized Template

If, on initial inspection, the custom template does not have a name, but only a reference to the section to which the problematic HTML element belongs, the issue is not rooted in the custom RD template, since no RD custom template is defined for the given section. If that is the case, there are two possible sources of the issue:

The core SAP CPQ RD template

If the problematic content/element is defined in the core RD template unless the issue is not breaking UI to the point in which the page is unusable, all corrections should be applied in form of a custom RD template, which extends to the core one. Otherwise, contact the Support team, as there may be an issue in the core RD template.

CSS used for adding style options to the problematic HTML element

If the problematic behavior is caused by CSS, you should inspect the problematic page element. This will show all CSS style options applied to the given element, stemming from both the default and custom CSS files. These are the names of default CSS files

fiori3CSS – controls the style options related to SAP’s Fiori UX.

responsiveCSSCore – controls the style options required for RD to work properly.

The custom CSS file is present only if the inspected element has a CSS option defined in the custom CSS file. Location of the custom CSS file is provided later in the text.

If the problematic behavior is caused by style options controlled by default CSS files (indicated with green arrows in the previous image), then the solution is to apply modifications to the custom CSS file. This is a valid option in case the UI is not broken beyond repair, in which case you should contact the Support team. The custom CSS file can be found (or added, if not defined) in Setup  UI Design  Branding .

5. Issues Caused by New Code Version
A frequent problem occurs as a result of core RD templates extended by custom templates being altered during the development of the latest code version. These changes may not be compatible with the previously applied customizations. If the core template is altered during the development of the latest code version and those changes are now breaking the customizations introduced by administrators, you have a couple of options:

If there is not enough time to resolve the issues, you can temporarily freeze the newly introduced changes in the core template. Use this only as a temporary measure to give yourself enough time to troubleshoot and resolve the issues in RD templates.

Apply the corrective action to the custom RD template code. The best practice is to obtain a fresh copy of the core RD template and reapply the custom code.

To identify custom code in an RD template, you need to resort to template versioning (in the Template Versions tab) and look for changes made by administrators, as indicated in the following image:

In this image, administrator-made changes (or versions) are marked with green arrows, while the system changes refer to modifications made by the SAP CPQ Development team. You should only observe the non-system changes, as those records contain information on custom solutions.

6. Define Custom Binding

If you need to define custom binding, it should be registered in the CustomScripts responsive template customization in the following way:



<script type="text/javascript">
    requirejs(['knockout', 'KnockoutCustomBindings'], function (ko) {
        ko.bindingHandlers.numericText = {
    update: function(element, valueAccessor, allBindingsAccessor) {
       var value = ko.utils.unwrapObservable(valueAccessor()),
           precision = ko.utils.unwrapObservable(allBindingsAccessor().precision) || ko.bindingHandlers.numericText.defaultPrecision,
        formattedValue = numberWithCommas(parseFloat(value.replace(/[^0-9.-]/g, '')).toFixed(precision));
         
        ko.bindingHandlers.text.update(element, function() { return formattedValue; });
    },
    defaultPrecision: 1 
};
    });
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
</script>


Then, it can be used in any responsive template as:



<span data-bind="numericText: content, precision: 2"></span><span>%</span> 

On this page
1. Localize the Issue - Core or Customized Templates
2. Narrow down the Issue to Element in Customized Template
3. Example - Custom RD Template Troubleshooting
4. Troubleshooting when the Issue is Not in Customized Template
5. Issues Caused by New Code Version
6. Define Custom Binding
Yes
No