package com.cydeo.jdbctests.day2;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P01_ListOfMaps {

    String dbUrl = "jdbc:oracle:thin:@3.239.246.132:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1(){

        Map<String, Object> rowMap1 = new HashMap<>();

        System.out.println("-----ROW MAP 1--------");
        rowMap1.put("FIRST_NAME", "Steven");
        rowMap1.put("LAST_NAME", "King");
        rowMap1.put("Salary", 24000);

        System.out.println("rowMap1 = " + rowMap1);

        Map<String, Object> rowMap2 = new HashMap<>();

        System.out.println("-----ROW MAP 2--------");
        rowMap2.put("FIRST_NAME", "Neena");
        rowMap2.put("LAST_NAME", "Kochhar");
        rowMap2.put("Salary", 17000);

        List<Map<String, Object>> dataList = new ArrayList<>();

        //we will put each row map into the list
        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println("dataList = " + dataList);
        System.out.println(dataList.get(1).get("LAST_NAME"));

    }

    @Test
    public void task2() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where rownum<6");
        //create rsmd to get column name and count
        ResultSetMetaData rsmd = rs.getMetaData();

        rs.next();

        Map<String, Object> rowMap1 = new HashMap<>();

        System.out.println("-----ROW MAP 1--------");
        rowMap1.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap1.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap1.put(rsmd.getColumnName(3), rs.getInt(3));
        System.out.println("rowMap1 = " + rowMap1);

        rs.next(); // move pointer to 2nd row
        Map<String, Object> rowMap2 = new HashMap<>();

        System.out.println("-----ROW MAP 2--------");
        rowMap2.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3), rs.getInt(3));
        System.out.println("rowMap2 = " + rowMap2);

        rs.next(); // move pointer to 3rd row
        Map<String, Object> rowMap3 = new HashMap<>();

        System.out.println("-----ROW MAP 3--------");
        rowMap3.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap3.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap3.put(rsmd.getColumnName(3), rs.getInt(3));
        System.out.println("rowMap3 = " + rowMap3);

        List<Map<String, Object>> dataList = new ArrayList<>();

        //we will put each row map into the list
        dataList.add(rowMap1);
        dataList.add(rowMap2);
        dataList.add(rowMap3);

        System.out.println("dataList = " + dataList);
        System.out.println(dataList.get(2).get("SALARY"));

        rs.close();
        statement.close();
        conn.close();
    }
    @Test
    public void task3() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where rownum < 6");
        //create rsmd to get column name and count
        ResultSetMetaData rsmd = rs.getMetaData();

        // Create List of Map to keep info
        List<Map<String, Object>> dataList = new ArrayList<>();

        // how many columns we have?
        int columnCount = rsmd.getColumnCount();

        //iterate through each row
        while (rs.next()) {
            // create an empty map to hold one row of info
            Map<String, Object> rowMap = new HashMap<>();

            // iterate each column dynamically to fill the map
            for (int i = 1; i <= columnCount; i++) {
                //key = column name, value = column value
                rowMap.put(rsmd.getColumnName(i), rs.getString(i));
                System.out.print(rsmd.getColumnName(i)+" - "+rs.getString(i) + " ");

            }

            // add the one row info into the List
            dataList.add(rowMap);

            for (Map<String, Object> row : dataList) {
                System.out.println(row);
            }


        }





        rs.close();
        statement.close();
        conn.close();


    }

}
