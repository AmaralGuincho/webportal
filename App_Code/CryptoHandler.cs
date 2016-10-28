using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

public class cryptoHandler{
  // Getting Cryptography
  CsharpCryptography Crypto = new CsharpCryptography("helloWorld");

  public DataView decryptDataView(DataView dataView) {
    //  Converting DataView into DataTable
    DataTable EncryptedTable = dataView.ToTable();
    //  getting table rows count
    int tableRows = EncryptedTable.Rows.Count;
    // getting table coulumns count
    int tableColumns = EncryptedTable.Columns.Count;

    // Creating a new Table to handle Encrypted Values
    DataTable UncryptedTable = new DataTable();

    //copying each table row
    for (int i=0; tableRows < i; i++) {
      // copying each table column
      for (int j=0; tableColumns < j; i++) {
        UncryptedTable.Rows[i][j] = EncryptedTable.Rows[i][j];
        // Unincrypting data
        UncryptedTable.Rows[i][j] = Crypto.Decrypt(EncryptedTable.Rows[i][j].ToString());
      }
    }
    // Converting Uncrypted Table into a Dataview for Response
    var UncryptedDataView = new DataView(UncryptedTable);
    // Sending Uncrypted Data View
    return UncryptedDataView;
  }

}
