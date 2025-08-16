package com.book;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {

    private static Connection connection = null;

    private DatabaseConnection() {}

    public static Connection getConnection() throws SQLException {
        if ( connection == null || connection.isClosed() ) {
            try {
                // Load the SQLite JDBC driver (optional, depending on your setup)
                Class.forName("org.sqlite.JDBC");

                // Create a new connection (use absolute path if needed)
                connection = DriverManager.getConnection("jdbc:sqlite:localdb.db");
                initDB(connection);
            } catch (ClassNotFoundException e) {
                System.err.println("SQLite JDBC Driver not found.");
                e.printStackTrace();
            }
        }

        return connection;
    }

    public static void initDB(Connection con) {
        try {
            Statement st = con.createStatement();

            // Enable foreign key constraints
            st.execute("PRAGMA foreign_keys = ON;");

            // Create Users Table
            st.executeUpdate("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT NOT NULL UNIQUE, email TEXT NOT NULL UNIQUE, password TEXT NOT NULL);");

            // Create Movies Table
            st.executeUpdate("CREATE TABLE IF NOT EXISTS movies (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, genre TEXT NOT NULL, duration_minutes INTEGER NOT NULL);");

            // Create Screens Table
            st.executeUpdate("CREATE TABLE IF NOT EXISTS screens (id INTEGER PRIMARY KEY AUTOINCREMENT, screen_number INTEGER NOT NULL UNIQUE);");

            // Create Seats Table
            st.executeUpdate("CREATE TABLE IF NOT EXISTS seats (id INTEGER PRIMARY KEY AUTOINCREMENT, seat_number TEXT NOT NULL, screen_id INTEGER NOT NULL, FOREIGN KEY (screen_id) REFERENCES screens(id) ON DELETE CASCADE);");

            // Create Bookings Table
            st.executeUpdate("CREATE TABLE IF NOT EXISTS bookings (id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER NOT NULL, movie_id INTEGER NOT NULL, screen_id INTEGER NOT NULL, seat_numbers TEXT NOT NULL, booking_date DATE DEFAULT CURRENT_DATE, total_amount REAL NOT NULL, FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE, FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE, FOREIGN KEY (screen_id) REFERENCES screens(id) ON DELETE CASCADE);");

            // Populate Movies Table
            st.executeUpdate("INSERT OR IGNORE INTO movies (title, genre, duration_minutes) VALUES " +
                    "('Amaran', 'Action/Drama/Thriller', 120), ('Bhool Bhulaiyaa 3', 'Comedy/Horror', 150), " +
                    "('Gladiator II', 'Action/Adventure/Drama', 140), ('Kanguva', 'Action/Adventure/Fantasy/Period', 130), " +
                    "('Lucky Baskhar', 'Crime/Drama/Thriller', 115), ('Wicked', 'Fantasy/Drama', 135), " +
                    "('Devaki Nandana Vasudeva', 'Action/Drama', 160), ('The Wild Robot', 'Action/Adventure/Family', 140), " +
                    "('Venom: The Last Dance', 'Action/Adventure/Sci-Fi', 150), ('Sookshmadarshini', 'Family/Thriller', 125), " +
                    "('Singham Again', 'Action/Drama', 140), ('Ka', 'Drama/Suspense', 130), ('Zebra', 'Action/Comedy/Crime/Thriller', 110), " +
                    "('Mechanic Rocky', 'Action/Comedy/Drama', 120), ('Matka', 'Action', 120), ('The Sabarmati Report', 'Drama/Historical', 120);");

            // Populate Screens Table
            st.executeUpdate("INSERT OR IGNORE INTO screens (screen_number) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);");

            // Populate Seats Table
            for (int screenId = 1; screenId <= 10; screenId++) {
                for (int seatNum = 1; seatNum <= 30; seatNum++) {
                    st.executeUpdate(String.format("INSERT OR IGNORE INTO seats (seat_number, screen_id) VALUES ('L%d', %d);", seatNum, screenId));
                }
            }

            System.out.println("Database initialized successfully with all movies, screens, and seats.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static void closeConnection() {

        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}