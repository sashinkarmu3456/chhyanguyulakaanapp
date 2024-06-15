using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Text;

/// <summary>
/// Summary description for ModEnDe
/// </summary>
public class ModEnDe
{
	public string Encryp(string en)
    {
        try{
            byte[] encode_byte  = System.Text.Encoding.UTF8.GetBytes(en);
            string encodeddata = System.Convert.ToBase64String(encode_byte);
            return encodeddata;
            }catch (Exception ex){
            throw new Exception("Error in Encoading" + ex.Message);
            }}
    public string Decryp(string de)
    {
        try{
            byte[] decode_byte = System.Convert.FromBase64String(de);
            string decodeddata = System.Text.Encoding.UTF8.GetString(decode_byte);
            return decodeddata;
            }catch (Exception ex){
            throw new Exception ("Error in Decoading" + ex.Message);
            }
    }
}