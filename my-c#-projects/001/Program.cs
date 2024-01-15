using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;


class Program
{
    static async Task Main(string[] args)
    {
        // Specify the folder path
        string folderPath = @"C:\Program Files (x86)\Ormed";

        // Get a list of files in the folder
        string[] files = Directory.GetFiles(folderPath);

        foreach (string filePath in files)
        {
            // Get the file name and modification date
            string fileName = Path.GetFileName(filePath);
            DateTime modificationDate = File.GetLastWriteTime(filePath);

            // Send the data to the web service
            await SendDataToWebService(fileName, modificationDate);

            // You can add additional processing or logging here if needed
        }
    }

    static async Task SendDataToWebService(string fileName, DateTime modificationDate)
    {
        // Define the URL of the web service
        string apiUrl = "https://example.com/api/upload";

        // Create an instance of HttpClient
        using (HttpClient httpClient = new HttpClient())
        {
            // Create a JSON payload with the file information
            var payload = new
            {
                FileName = fileName,
                ModificationDate = modificationDate
            };

            // Serialize the payload to JSON
            string jsonPayload = Newtonsoft.Json.JsonConvert.SerializeObject(payload);

            // Create a StringContent with the JSON data
            var content = new StringContent(jsonPayload, System.Text.Encoding.UTF8, "application/json");

            // Send a POST request to the web service
            HttpResponseMessage response = await httpClient.PostAsync(apiUrl, content);

            // Check the response status if needed
            if (response.IsSuccessStatusCode)
            {
                Console.WriteLine($"Data sent for {fileName} successfully.");
            }
            else
            {
                Console.WriteLine($"Error sending data for {fileName}. Status code: {response.StatusCode}");
            }
        }
    }
}
