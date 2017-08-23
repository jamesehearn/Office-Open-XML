using System;
using System.Windows;
using System.IO;
using System.Xml;
using System.Xml.Xsl;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;

namespace Office_Open_XML
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void button_SelectXSLT(object sender, RoutedEventArgs e)
        {
            // Create OpenFileDialog
            var dlg = new Microsoft.Win32.OpenFileDialog
            {
                // Default file extension
                DefaultExt = ".xslt",
                // Filter files by extension
                Filter = "XSLT documents (.xslt)|*.xslt"
            };

            // Display OpenFileDialog by calling ShowDialog method
            var result = dlg.ShowDialog();

            // Get the selected file name and display in a TextBox
            if (result != true) return;

            // Open document
            var xsltFilename = dlg.FileName;
            textBoxXsltLocation.Text = xsltFilename;
        }
        private void button_SelectXML(object sender, RoutedEventArgs e)
        {
            // Create OpenFileDialog
            var dlg = new Microsoft.Win32.OpenFileDialog
            {
                // Default file extension
                DefaultExt = ".xml",
                // Filter files by extension
                Filter = "XML documents (.xml)|*.xml"
            };

            // Display OpenFileDialog by calling ShowDialog method
            var result = dlg.ShowDialog();

            // Get the selected file name and display in a TextBox
            if (result != true) return;

            // Open document
            var xmlFilename = dlg.FileName;
            textBoxXmlLocation.Text = xmlFilename;
        }
        private void button_SelectTemplate(object sender, RoutedEventArgs e)
        {
            // Create OpenFileDialog
            var dlg = new Microsoft.Win32.OpenFileDialog
            {
                // Default file extension
                DefaultExt = ".dotx",
                // Filter files by extension
                Filter = "Word Template documents (.dotx)|*.dotx"
            };

            // Display OpenFileDialog by calling ShowDialog method
            var result = dlg.ShowDialog();

            // Get the selected file name and display in a TextBox
            if (result != true) return;

            // Open document
            var templateFilename = dlg.FileName;
            textBoxTemplateLocation.Text = templateFilename;
        }
        private void button_DocumentLocation(object sender, RoutedEventArgs e)
        {
            var dlg = new Microsoft.Win32.SaveFileDialog
            {
                // Default file name
                FileName = "Output File Name",
                // Default file extension
                DefaultExt = ".docx",
                // Filter files by extension
                Filter = "Word Documents (*.docx)|*.docx"
            };


            // Show save file dialog box
            var result = dlg.ShowDialog();

            // Process save file dialog box results
            if (result != true) return;

            // Save document
            var documentFilename = dlg.FileName;
            textBoxDocumentLocation.Text = documentFilename;
        }
        private void button_MakeDocument(object sender, RoutedEventArgs e)
        {
            try
            {
                //Declare variables for file locations.
                var xmlDataFile = textBoxXmlLocation.Text;
                var xsltFile = textBoxXsltLocation.Text;
                var templateDocument = textBoxTemplateLocation.Text;
                var outputDocument = textBoxDocumentLocation.Text;

                //Create a writer for the output of the Xsl Transformation.
                var stringWriter = new StringWriter();
                var xmlWriter = XmlWriter.Create(stringWriter);

                //Create the Xsl Transformation object.
                var transform = new XslCompiledTransform();
                transform.Load(xsltFile);

                //Transform the xml data into Open XML 2.5 Wordprocessing format.
                transform.Transform(xmlDataFile, xmlWriter);

                //Create an Xml Document of the new content.
                var newWordContent = new XmlDocument();
                newWordContent.LoadXml(stringWriter.ToString());

                //Copy the Word 2007 source document to the output file.
                File.Copy(templateDocument, outputDocument, true);

                //Use the Open XML SDK version 2.5 to open the output document in edit mode.
                using (var output = WordprocessingDocument.Open(outputDocument, true))
                {
                    // Change the document type to Document
                    output.ChangeDocumentType(DocumentFormat.OpenXml.WordprocessingDocumentType.Document);

                    //Using the body element within the new content XmlDocument
                    //  create a new Open Xml Body object.
                    if (newWordContent.DocumentElement != null)
                    {
                        var updatedBodyContent = new Body(newWordContent.DocumentElement.InnerXml);

                        //Replace the existing Document Body with the new content.
                        output.MainDocumentPart.Document.Body = updatedBodyContent;
                    }

                    //Save the updated output document.
                    output.MainDocumentPart.Document.Save();
                }

                MessageBox.Show("Your Document Is Ready! W00t!");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
