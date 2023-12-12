<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="../db/db_conn.jsp"%>

<%
    String productIdToDelete = request.getParameter("id");

    // 데이터베이스에서 제품 정보 및 파일 이름 가져오기
    String getProductFileNameSql = "SELECT p_fileName FROM product WHERE p_id=?";
    String fileNameToDelete = "";
    
    PreparedStatement getProductFileNameStmt = null;

    try {
        getProductFileNameStmt = conn.prepareStatement(getProductFileNameSql);
        getProductFileNameStmt.setString(1, productIdToDelete);
        ResultSet fileNameResult = getProductFileNameStmt.executeQuery();

        if (fileNameResult.next()) {
            fileNameToDelete = fileNameResult.getString("p_fileName");
        }
    } finally {
        if (getProductFileNameStmt != null) {
            try {
                getProductFileNameStmt.close();
            } catch (SQLException e) {
                // 예외 무시
            }
        }
    }

    // 파일 이름이 존재하는 경우에만 삭제 작업 수행
    if (!fileNameToDelete.isEmpty()) {
        // 서버에서 파일 삭제
        String realFilePath = request.getServletContext().getRealPath("image/product") + File.separator + fileNameToDelete;
        File fileToDelete = new File(realFilePath);
        if (fileToDelete.exists()) {
            fileToDelete.delete();
        }
    }

    // 데이터베이스에서 상품 데이터 삭제
    String deleteSql = "DELETE FROM product WHERE p_id=?";
    PreparedStatement pstmtDelete = null;
    
    try {
        pstmtDelete = conn.prepareStatement(deleteSql);
        pstmtDelete.setString(1, productIdToDelete);
        pstmtDelete.executeUpdate();
    } finally {
        if (pstmtDelete != null) {
            try {
                pstmtDelete.close();
            } catch (SQLException e) {
                // 예외 무시
            }
        }
    }

    response.sendRedirect("product_edit.jsp?edit=delete");
%>

