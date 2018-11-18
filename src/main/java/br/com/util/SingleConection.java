package br.com.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Classe de conexão com banco de dados
 * 
 * @author everton
 *
 */
public class SingleConection {

	private static String URL = "jdbc:postgresql://localhost:5432/bd1?autoReconnect=true";
	private static String USER = "postgres";
	private static String PASSWD = "postgres";
	private static Connection CONNECTION = null;

	static {
		conectar();
	}

	public SingleConection() {
		conectar();
	}

	public static void conectar() {
		try {
			if (CONNECTION == null) {
				Class.forName("org.postgresql.Driver");
				CONNECTION = DriverManager.getConnection(URL, USER, PASSWD);
				CONNECTION.setAutoCommit(false);
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Erro ao estabelecer a conexão com database");
		}
	}

	public static Connection getConexao() {
		return CONNECTION;
	}

}
