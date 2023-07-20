using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Flex.DAL
{
    public class myDAL
    {
        private static readonly string conString = 
        System.Configuration.ConfigurationManager.ConnectionStrings["sqlrichflexCon"].ConnectionString;

        public int login(string id, string password)
        {
            int Found = 0;
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("loginToAccount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@id", SqlDbType.Char, 8);
                cmd.Parameters.Add("@found", SqlDbType.Int).Direction = ParameterDirection.Output;


                cmd.Parameters["@password"].Value = password;
                cmd.Parameters["@id"].Value = id;

                cmd.ExecuteNonQuery();

                Found = Convert.ToInt32(cmd.Parameters["@found"].Value);

                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return Found; ; //return the dataset
        }

        public string signup(string name,string roll,string cnic, string father, string email, string password, string degree,string phone,string dob,string nation,string address)
        {
            string output = "";
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("StudentSignUp", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@rollnum", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@stdname", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@dob", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@fathername", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@bloodgroup", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@cnic", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@phoneno", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@gendar", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@nationality", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@degree", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@output", SqlDbType.VarChar,256).Direction = ParameterDirection.Output;



                cmd.Parameters["@rollnum"].Value = roll;
                cmd.Parameters["@stdname"].Value = name;
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@password"].Value = password;
                cmd.Parameters["@dob"].Value = dob;
                cmd.Parameters["@fathername"].Value = father;
                cmd.Parameters["@bloodgroup"].Value = "A+";
                cmd.Parameters["@cnic"].Value = cnic;
                cmd.Parameters["@phoneno"].Value = phone;
                cmd.Parameters["@gendar"].Value = "N/A";
                cmd.Parameters["@nationality"].Value = nation;
                cmd.Parameters["@degree"].Value = degree;




                cmd.ExecuteNonQuery();

                output = Convert.ToString(cmd.Parameters["@output"].Value);

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return output; //return the dataset
        }

        public DataTable getDHL()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("  select stdname,gpa from students as s inner join list as l on s.rollnum = l.stdId order by gpa desc", con);  //instantiate SQL command 

                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
                temp = ds.Tables[0];
                
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return temp; ; //return the dataset
        }

        public string registerCourse(string stdid,string crsname)
        {

            string output = "";
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("sp_register_student_in_course", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@coursename", SqlDbType.VarChar,256); 
                cmd.Parameters.Add("@student_id", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@output", SqlDbType.VarChar,256).Direction = ParameterDirection.Output;


                cmd.Parameters["@coursename"].Value = crsname;
                cmd.Parameters["@student_id"].Value = stdid;

                cmd.ExecuteNonQuery();

                output = Convert.ToString(cmd.Parameters["@output"].Value);

                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return output; //return the dataset
        }

        public string dropCourse(string stdid, string crsname)
        {

            string output = "";
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("sp_drop_course", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@coursename", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@student_id", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@output", SqlDbType.VarChar, 256).Direction = ParameterDirection.Output;


                cmd.Parameters["@coursename"].Value = crsname;
                cmd.Parameters["@student_id"].Value = stdid;

                cmd.ExecuteNonQuery();

                output = Convert.ToString(cmd.Parameters["@output"].Value);

                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return output; //return the dataset
        }

        public void submitfeedback(string stdid, string crsname,string feedback)
        {

            //string output = "";
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("submitfeedback", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@coursename", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@student_id", SqlDbType.VarChar, 256);
                cmd.Parameters.Add("@feedback", SqlDbType.VarChar, 256);


                cmd.Parameters["@coursename"].Value = crsname;
                cmd.Parameters["@student_id"].Value = stdid;
                cmd.Parameters["@feedback"].Value = feedback;

                cmd.ExecuteNonQuery();

                

                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            
        }

        public DataTable getCourses()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select crsName from AvailableCourses",con);
                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
                temp = ds.Tables[0];

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return temp; ; //return the dataset
        }

        public DataTable getChallans(string id)
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                
                cmd = new SqlCommand("getchallans", con);
                cmd.Parameters.Add("@student_id", SqlDbType.VarChar, 256);
                cmd.Parameters["@student_id"].Value = id;
                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
                temp = ds.Tables[0];

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return temp; ; //return the dataset
        }


        public DataTable displayStudent(string id)
        {


            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("spDisplayStudent", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@id", SqlDbType.Char, 8);

                cmd.Parameters["@id"].Value = id;

                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
                temp = ds.Tables[0];
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return temp; //return the dataset
        }
        public DataTable displayCourses(string id)
        {


            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("spviewRegCourses", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@stdid", SqlDbType.Char, 8);

                cmd.Parameters["@stdid"].Value = id;

                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
                temp = ds.Tables[0];
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return temp; //return the dataset
        }

        public DataTable displayMarks(string id)
        {


            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getMarksOfStudent", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@stdid", SqlDbType.Char, 8);

                cmd.Parameters["@stdid"].Value = id;

                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
                temp = ds.Tables[0];
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return temp; //return the dataset
        }

        public DataTable displayAttendance(string id, string courseName)
        {


            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("spGetAttendance", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@stdid", SqlDbType.Char, 8);
                cmd.Parameters.Add("@courseName", SqlDbType.VarChar, 256);

                cmd.Parameters["@stdid"].Value = id;
                cmd.Parameters["@courseName"].Value = courseName;


                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
                temp = ds.Tables[0];
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return temp; //return the dataset
        }

        public DataTable displayTranscript(string id, string semName)
        {


            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(conString); //declare and instantiate new SQL connection
            DataTable temp = new DataTable();
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("viewTranscript", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                cmd.Parameters.Add("@stdid", SqlDbType.Char, 8);
                cmd.Parameters.Add("@semName", SqlDbType.VarChar, 10);

                cmd.Parameters["@stdid"].Value = id;
                cmd.Parameters["@semName"].Value = semName;

                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
                temp = ds.Tables[0];
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return temp; //return the dataset
        }



    }
}