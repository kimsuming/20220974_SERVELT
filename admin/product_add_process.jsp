<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>


        <%@ page contentType = "text/html;charset=utf-8" %> <%--페이지 지시자, 한글 깨짐 방지--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>상품 등록</title>
        
        <%
    	request.setCharacterEncoding("UTF-8");

	String productId = multi.getParameter("productid”);
	String name = multi.getParameter(“name”);
	String unitPrice = multi.getParameter(“unitPrice”);
	String description = multi.getParameter(“description”);
	String manufacturer = multi.getParameter(“manufacturer”);
	String category = multi.getParameter(“category”);
	String unitsInStock = multi.getParameter(“unitsInStock”);
	String condition = multi.getParameter(“condition”);

        
        Integer price;
        
        if (unitPrice.isEmpty()) price = 0;
        else price = Integer.valueOf(unitPrice);
        
    	long stock;

    	if (unitsInStock.isEmpty())
	        stock = 0;
	    else
	        stock = Long.valueOf(unitsInStock);

                                          
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
                                        
	ProductRepository dao = ProductRepository.getInstance();

	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);


	dao.addProduct(newProduct);

	response.sendRedirect("index_ad.jsp");
%>
