import org.apache.xerces.parsers.DOMParser;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.util.XMLCatalogResolver;
import org.apache.xerces.util.XMLResourceIdentifierImpl;

public class XmlValidator {
    public static void main(String[] args) {
        try {
            // Crea l'oggetto parser
            DOMParser parser = new DOMParser();

            // Imposta la validazione
            parser.setFeature("http://xml.org/sax/features/validation", true);
            parser.setFeature("http://apache.org/xml/features/validation/schema", true);

            // Specifica il file XML da validare
            String xmlFile = "C:\\Users\\conca\\OneDrive\\Desktop\\progetto_valentina_concas\\ProgettoValentinaConcas.xml"; // Modifica questo percorso

            // Crea l'oggetto input source per il parser
            XMLInputSource source = new XMLInputSource(null, xmlFile, null);
            parser.parse(source);

            System.out.println("Il documento XML è valido!");

        } catch (Exception e) {
            System.out.println("Errore di validazione: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
