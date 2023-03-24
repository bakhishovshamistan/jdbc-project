package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaData {

    //Connection String
    String dbUrl = "jdbc:oracle:thin:@3.239.246.132:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where rownum<6");

        //DatabaseMetaData
        DatabaseMetaData dbMetaData = conn.getMetaData();

        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDatabaseProductName());
        System.out.println(dbMetaData.getDatabaseProductVersion());
        System.out.println(dbMetaData.getDriverName());

        //ResultSetMetaData
        ResultSetMetaData rsmd = rs.getMetaData();

        //total number of columns
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);


        // get me column  name for index #
        System.out.println(rsmd.getColumnName(1));

        System.out.println("-------------PRINT ALL DATA DYNAMICALLY----------------------");

        // print all column names dynamically
       //ITERATE THROUGH EACH ROW
        while (rs.next()) {

//            System.out.println(rsmd.getColumnName(1)+" - "+rs.getString(1));
//            System.out.println(rsmd.getColumnName(2)+" - "+rs.getString(2));
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(rsmd.getColumnName(i)+" - "+rs.getString(i) + " ");
            }
            System.out.println();

        }

         /*
              ResultSet --> it holds table data
                    rs.next() --> it iterate each row dynamically  (with while loop)
                       rs.getString(columnIndex) --> to retrieve data itself
                       rs.getString(columnName)
               ResultSetMetaData --> it holds table information ( ColumnNames - Column Count)
                        rsmd.getColumnCount() --> how many columns we have
                        rsmd.getColumnName(index) --> it will give specific column name
         */





        //Close connection
        rs.close();
        statement.close();
        conn.close();

    }

}
