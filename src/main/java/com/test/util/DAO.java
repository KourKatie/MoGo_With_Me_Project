package com.test.util;

import org.jasypt.util.password.StrongPasswordEncryptor;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.*;
import java.util.Calendar;
import java.util.List;

public class DAO {

    public static ArrayList<userProfile> getUserProfile(int UserId) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            PreparedStatement readUserInfo = mysqlConnection.prepareStatement( "select profilePicture, FirstName, " +
                    "LastName, email, phoneNumber, Company, gender, UserId\n" +
                    "from userinfo\n " +
                    "where UserId = ?");

            readUserInfo.setInt(1, UserId);

            ResultSet results = readUserInfo.executeQuery();

            ArrayList<userProfile> userList = new ArrayList<userProfile>();

            while (results.next()) {
                userProfile temp = new userProfile(results.getString(1), results.getString(2),
                        results.getString(3), results.getString(4), results.getString(5),
                        results.getString(6), results.getString(7), results.getInt(8));

                userList.add(temp);

                return userList;
            }

        } catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }


    public static ArrayList<allRequests> getAllRequests() {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(

                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);


            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            Calendar cal = Calendar.getInstance();

            String today = sdf.format(cal.getTime());

            PreparedStatement ar = mysqlConnection.prepareStatement("select userinfo.FirstName, userinfo.Company, request.message, request.departure, request.arrival, " +
                    "request.date, request.time,  userinfo.gender, userinfo.phoneNumber\n" +
                    "from userinfo\n" +
                    "inner join request on userinfo.UserId = request.UserID\n" +
                    "WHERE request.date > ? ");

            ar.setString(1, today);

            ResultSet results = ar.executeQuery();

            ArrayList<allRequests> allRequestList = new ArrayList<allRequests>();

            while (results.next()) {

                allRequests temp = new allRequests(results.getString(1), results.getString(2), results.getString(3),
                        results.getString(4), results.getString(5), results.getString(6),
                        results.getString(7), results.getString(8), results.getString(9));

                allRequestList.add(temp);

            }
            return allRequestList;

        } catch (Exception ex) {
            ex.printStackTrace();
            return null;

        }

    }

    public static ArrayList<userHistory> getUserHistory(
            int UserId
    ) {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            Calendar cal = Calendar.getInstance();

            String today = sdf.format(cal.getTime());

            PreparedStatement readUserHistory = mysqlConnection.prepareStatement( "select date, departure, " +
                    "arrival, time, message\n" +
                    "from request\n " +
                    "where UserID = ? and date > ?");

            readUserHistory.setInt(1, UserId);
            readUserHistory.setString(2, today);

            ResultSet results = readUserHistory.executeQuery();

            ArrayList<userHistory> userHistoryList = new ArrayList<userHistory>();

            while (results.next()) {
                userHistory temp = new userHistory(results.getString(1), results.getString(2),
                        results.getString(3), results.getString(4), results.getString(5));

                userHistoryList.add(temp);
            }

                return userHistoryList;


        } catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    public static ArrayList<History> getHistory(
            int UserId
    ) {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            Calendar cal = Calendar.getInstance();

            String today = sdf.format(cal.getTime());

            PreparedStatement readHistory = mysqlConnection.prepareStatement( "select date, departure, " +
                    "arrival, time, message\n" +
                    "from request\n " +
                    "where UserID = ? and date < ?");

            readHistory.setInt(1, UserId);
            readHistory.setString(2, today);

            ResultSet results = readHistory.executeQuery();

            ArrayList<History> HistoryList = new ArrayList<History>();

            while (results.next()) {
                History temp = new History(results.getString(1), results.getString(2),
                        results.getString(3), results.getString(4), results.getString(5));

                HistoryList.add(temp);
            }

            return HistoryList;


        } catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    public static boolean deleteUser(int userId) {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            PreparedStatement readDelete = mysqlConnection.prepareStatement("Delete from userinfo where UserId = ?");

            readDelete.setInt(1, userId);

            System.out.println(userId);

            boolean result = readDelete.execute();

            return true;

        } catch (Exception ex) {
            ex.printStackTrace();

            return false;

        }

    }

    public static int verifyLogin(String email, String password) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            String readEmailCommand = "select email from userinfo";
            Statement readEmailList = mysqlConnection.createStatement();// creates the statement
            System.out.println("reademaillist: " + readEmailList);

            ResultSet results = readEmailList.executeQuery(readEmailCommand);
            System.out.println("results: " + results);

            while (results.next() == true) {
                String emailFromDb = results.getString(1);
                System.out.println("emailfromDB" + emailFromDb);

                if (email.equals(emailFromDb)) {
                    System.out.println("works here");
                    PreparedStatement readPasswordCommand = mysqlConnection.prepareStatement("select passEncrypted from userinfo where email LIKE ? ");

                    readPasswordCommand.setString(1, email);

                    ResultSet result = readPasswordCommand.executeQuery();

                    System.out.println(result);

                    while (result.next() == true) {

                        String passwordFromDB = result.getString(1);

                        StrongPasswordEncryptor enc = new StrongPasswordEncryptor();

                        String userPassword = enc.encryptPassword(password);

                        boolean match = enc.checkPassword(password, passwordFromDB);

                        if (match) {

                            PreparedStatement readUserIdCommand = mysqlConnection.prepareStatement("select UserId from userinfo where email LIKE ? ");

                            readUserIdCommand.setString(1, email);

                            ResultSet resultofUserId = readUserIdCommand.executeQuery();

                            while (resultofUserId.next() == true) {
                                int UserId = resultofUserId.getInt(1);

                                System.out.println(UserId);

                                return UserId;
                            }


                        }

                    }
                }
            }


        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        }

        return 0;
    }

    public static boolean addCustomer(
            String FirstName,
            String LastName,
            String email,
            String phoneNumber,
            String Company,
            String gender,
            String password,
            String profilePicture) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            StrongPasswordEncryptor enc = new StrongPasswordEncryptor();

            String passEncrypted = enc.encryptPassword(password);

            String addCustomerCommand = "INSERT INTO userinfo " +
                    "(FirstName, LastName, email, phoneNumber, Company, " +
                    "gender, passEncrypted, profilePicture) " +
                    "VALUES ('" +
                    FirstName + "', '" +
                    LastName + "', '" +
                    email + "', '" +
                    phoneNumber + "', '" +
                    Company + "', '" +
                    gender + "', '" +
                    passEncrypted + "', '" +
                    profilePicture + "')";

            System.out.println("SQL Query " + addCustomerCommand);

            Statement st = mysqlConnection.createStatement();

            int result = st.executeUpdate(addCustomerCommand);

            return true;

        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }

    }


    public static boolean addrequest(
            String UserID,
            String departure,
            String arrival,
            String time,
            String date,
            String frequency,
            String message

    ) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            String addRequestCommand = "INSERT INTO request " +
                    "(UserID, departure, arrival, time, date, frequency, message)" +
                    "VALUES ('" +
                    UserID + "', '" +
                    departure + "', '" +
                    arrival + "', '" +
                    time + "', '" +
                    date + "', '" +
                    frequency + "', '" +
                    message + "')";

            System.out.println("SQL Query " + addRequestCommand);

            Statement st = mysqlConnection.createStatement();

            int result = st.executeUpdate(addRequestCommand);

            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public static ArrayList<matches> getMatches(String departure, String arrival, String date, String time)

    {

        try {

            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);


            PreparedStatement ps = mysqlConnection.prepareStatement("select userinfo.FirstName, userinfo.Company, request.message, request.departure, request.arrival, " +
                    "request.date,  userinfo.gender, userinfo.phoneNumber\n" +
                    "from userinfo\n" +
                    "inner join request on userinfo.UserId = request.UserID\n" +
                    "WHERE request.departure= ? AND request.arrival= ? AND request.date= ? AND request.time= ? ");

            ps.setString(1, departure);
            ps.setString(2, arrival);
            ps.setString(3, date);
            ps.setString(4, time);

            ResultSet results = ps.executeQuery();

            //Array list of matches
            ArrayList<matches> matchList = new ArrayList<matches>();

            // if you have more rows to read it continues
            while (results.next()) {
                // gets data from columns
                matches temp = new matches(results.getString(1), results.getString(2), results.getString(3),
                        results.getString(4), results.getString(5), results.getString(6),
                        results.getString(7), results.getString(8));

                // added the temp match to the arrayList
                matchList.add(temp);
            }

            return matchList;

        } catch (Exception ex) {
            ex.printStackTrace();
            return null; //null result indicates an issue
        }

    }

    public static List<textMsg> getUserInfo(String UserId) {
        try {

            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            PreparedStatement us = mysqlConnection.prepareStatement("select phoneNumber, FirstName, LastName from userinfo where UserId = ?");

            us.setString(1, UserId);

            ResultSet result = us.executeQuery();

            List txtList = new ArrayList<textMsg>();

            while (result.next()) {
                txtList.add(result.getString(1));
                txtList.add(result.getString(2));
                txtList.add(result.getString(3));

                return txtList;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }

        return null;
    }

    public static ArrayList<matchProfile> getMatchProfile(String phoneNumber) {
        try {

            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            PreparedStatement up = mysqlConnection.prepareStatement("SELECT profilePicture, FirstName, LastName, Company, gender " +
                    "from userinfo where phoneNumber = ?");

            up.setString(1, phoneNumber);

            ResultSet results = up.executeQuery();

            ArrayList<matchProfile> mProfileList = new ArrayList<matchProfile>();

            while (results.next()) {
                matchProfile temp = new matchProfile(results.getString(1), results.getString(2), results.getString(3), results.getString(4), results.getString(5));

                mProfileList.add(temp);

                return mProfileList;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }

        return null;

    }
}

