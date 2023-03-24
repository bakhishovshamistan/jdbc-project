package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO2_FlexibleNavigation {

    //Connection String
    String dbUrl = "jdbc:oracle:thin:@3.239.246.132:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select FIRST_NAME, LAST_NAME FROM EMPLOYEES");

        //first row
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        //second row
        // ResultSet.TYPE_SCROLL_SENSITIVE --> flexible navigation between rows
        // ResultSet.CONCUR_READ_ONLY --> do not update anything from DB, only read
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        //last row
        rs.last();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        // number of rows we have (last + getRow)
       int rowNumber = rs.getRow(); // the current row number; 0 if there is no current row
        System.out.println("rowNumber = " + rowNumber);

        System.out.println("------ABSOLUTE------");
        rs.absolute(46);
        //true if the cursor is moved to a position in this ResultSet object;
        // false if the cursor is before the first row or after the last row
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        System.out.println("------PREVIOUS------");
        rs.previous();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        // print the whole table
        rs.first();

        rs.beforeFirst(); // jump into before first row

        System.out.println("---PRINTING TABLE---");
        while (rs.next()) {
            System.out.println(rs.getString(1) + " " + rs.getString(2));
        }



        //Close connection
        rs.close();
        statement.close();
        conn.close();

    }

}
