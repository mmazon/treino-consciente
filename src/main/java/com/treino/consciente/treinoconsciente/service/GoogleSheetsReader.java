package com.treino.consciente.treinoconsciente.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.security.GeneralSecurityException;
import java.util.List;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.sheets.v4.Sheets;
import com.google.api.services.sheets.v4.SheetsScopes;
import com.google.api.services.sheets.v4.model.ValueRange;

public class GoogleSheetsReader {

	private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();
    private static final String APPLICATION_NAME = "Treino Consciente";
    private static final Set<String> SCOPES = SheetsScopes.all();
    private static final String KEY_FILE_LOCATION = "/treino-consciente.p12";
    private static final String SERVICE_ACCOUNT_EMAIL = "treino-consciente@oval-surfer-215616.iam.gserviceaccount.com";

    private static final Logger LOGGER = LoggerFactory.getLogger(GoogleSheetsReader.class);
    
    /**
     * Creates an authorized Credential object.
     * @return An authorized Credential object.
     * @throws IOException If there is no client_secret.
     */
    private Credential getCredentials() throws URISyntaxException, IOException, GeneralSecurityException {
        //Reading Key File
        InputStream in = GoogleSheetsReader.class.getResourceAsStream(KEY_FILE_LOCATION);
        File file = new File("token");
        FileUtils.copyInputStreamToFile (in, file);
        // Construct a GoogleCredential object with the service account email
        // and p12 file downloaded from the developer console.
        HttpTransport httpTransport = GoogleNetHttpTransport.newTrustedTransport();
        return new GoogleCredential.Builder()
                .setTransport(httpTransport)
                .setJsonFactory(JSON_FACTORY)
                .setServiceAccountId(SERVICE_ACCOUNT_EMAIL)
                .setServiceAccountPrivateKeyFromP12File(file)
                .setServiceAccountScopes(SCOPES)
                .build();
    }

    public List<List<Object>> readSheet(String nameAndRange, String key) throws GeneralSecurityException, IOException {
        final NetHttpTransport HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
        final String spreadsheetId = key;
        final String range = nameAndRange;
        try {
            Sheets service = new Sheets.Builder(HTTP_TRANSPORT, JSON_FACTORY, getCredentials())
                    .setApplicationName(APPLICATION_NAME)
                    .build();

            ValueRange response = service.spreadsheets().values()
                    .get(spreadsheetId, range)
                    .execute();
            List<List<Object>> values = response.getValues();

            return values;
        } catch(Exception ex) {
            LOGGER.error("Exception while reading google sheet", ex);
        }
        return null;
    }
}