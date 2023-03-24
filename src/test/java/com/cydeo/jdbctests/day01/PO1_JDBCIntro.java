package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO1_JDBCIntro {

    //Connection String
    String dbUrl = "jdbc:oracle:thin:@3.239.246.132:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        //Create the connection
        //DriverManager class getConnection Method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        //It will help us to execute queries
        Statement statement = conn.createStatement();

        //ResultSet will store data after execution. It stores only data(there is no table info)
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is not null");

        while (rs.next()){
            System.out.println(rs.getString(1)+ "-"+rs.getString(2)+ "-"+rs.getString(3)+ "-"+rs.getString(4));
        }

        // Can we run another query in same connection?- Yes

        rs = statement.executeQuery("select * from LOCATIONS");

        System.out.println("-----------------------------------------------");

        while (rs.next()) {
            System.out.println(rs.getString(2) + "-" + rs.getString(4));
        }


        //Close connection
        rs.close();
        statement.close();
        conn.close();

    }

}
