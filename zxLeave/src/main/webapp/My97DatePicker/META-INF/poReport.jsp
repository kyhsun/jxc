<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PO Report</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<div id="content">
    <div class="tt">Current Page:eventService &gt;&gt; Purchase Order&gt;&gt; PO Report</div>
    <div class="selBox">
        <table class="tb1">
            <tr>
                <td>Project Code&nbsp;: <input type="text" /></td>
                <td>Vendor Name&nbsp;:
                    <select>
                        <option value="">All</option>
                        <option value=""></option>
                    </select>
                </td>
                <td>Submit By&nbsp;:
                    <select>
                        <option value="">All</option>
                        <option value=""></option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Generate From&nbsp;:&nbsp;<input type="text"></td>
                <td>Generate To&nbsp;:&nbsp;<input type="text"> </td>
				<td>PO Status&nbsp;:
                    <select>
                        <option value="">All</option>
                        <option value=""></option>
                    </select>
                </td>
            </tr>
        </table>
        <div class="btn"><button>Search</button></div>
    </div>
	
</div>
</body>
</html>
