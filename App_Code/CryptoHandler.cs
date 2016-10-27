using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

public class cryptoHandler{
  // Getting Cryptography
  Cryptography Crypto = new Cryptography("helloWorld");

  public DataTable decryptDataView(dataView){
    //  Converting DataView into DataTable
    DataTable EncryptedTable = dataView.ToTable();
    //  getting table rows count
   tableRows = EncryptedTable.Table.Rows.Count;
   // Creating a new Table to handle Encrypted Values
   DataTable UncryptedTable = new DataTable;
  }
}
