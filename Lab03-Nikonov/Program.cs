using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

namespace Lab03_Nikonov
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string connectiostring = @"Data Source=DESKTOP-NOJI3BG;Initial Catalog=DBLab3;Integrated Security=True";
            string path = @"D:\Visual Studio\Lab03-Nikonov\elements";

            DirectoryInfo dir = new DirectoryInfo(path);
            FileInfo[] file = dir.GetFiles("*.txt");
            List<string> elements = new List<string>();
            SqlCommand cmd = new SqlCommand();

            using (SqlConnection connect = new SqlConnection(connectiostring))
            {
                foreach (FileInfo fi in file)
                {
                    elements.Add(fi.Name);
                }

                connect.Open();

                for (int i = 0; i < elements.Count; i++)
                {
                    string s = elements[i].ToString();
                    s = s.Remove(s.Length - 4);
                    string sql = $"CREATE TABLE {s} (wave_length Float, rel_intensity FLOAT);";
                    cmd = new SqlCommand(sql, connect);
                    //cmd.ExecuteNonQuery();
                }
                                
                for (int i = 0; i < elements.Count; i++)
                {
                    string s = elements[i].ToString();
                    s = s.Remove(s.Length - 4);

                    string[] row = File.ReadAllLines($@"D:\Visual Studio\Lab03-Nikonov\elements\{s}.txt");
                    string sql1 = $"INSERT INTO {s} (wave_length, rel_intensity) VALUES ";
                    char[] sep = new char[] { ' ', '\t' };
                    for (int j = 0; j < row.Length; j++)
                    {
                        string[] col = row[j].Split(sep, StringSplitOptions.RemoveEmptyEntries);
                        sql1 += "(" + col[0] + ", " + col[1] + ")";
                        if (j < row.Length - 1) sql1 += ", ";
                    }
                    sql1 += ";";
                    cmd = new SqlCommand(sql1, connect);
                    //cmd.ExecuteNonQuery();
                }
                               
                string sql5 = "CREATE TABLE spectral_lines (atomic_number Float, wave_length FLOAT, rel_intensity FLOAT);";
                cmd = new SqlCommand(sql5, connect);
                //cmd.ExecuteNonQuery();

                for (int i = 0; i < elements.Count; i++)
                {
                    string s = elements[i].ToString();
                    s = s.Remove(s.Length - 4);
                    int[] atomnumber = new int[] {13, 18, 56, 20, 6, 2, 1, 26, 36, 3, 12, 80, 10, 7, 8, 19, 14, 11, 38, 16, 54 };

                    string sql3 = "INSERT INTO spectral_lines";
                    sql3 += "(atomic_number, wave_length, rel_intensity) ";
                    sql3 += "SELECT " + atomnumber[i] + " AS atomic_number, ";
                    sql3 += $"(wave_length * 0.1) AS wave_length, rel_intensity FROM {s};\n";
                    cmd = new SqlCommand(sql3, connect);
                    //cmd.ExecuteNonQuery();
                }


                for (int i = 0; i < elements.Count; i++)
                {
                    string s = elements[i].ToString();
                    s = s.Remove(s.Length - 4);
                    string sql7 = $"SELECT full_name, {s}, COUNT(*) FROM elements as {s}";
                }




                connect.Close();
            }             
                                   
        }
    }
}
