import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.FilterWriter;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculateDiscountServlet", value = "/display-discount")
public class CalculateDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("txt_Price"));
        float discount = Float.parseFloat(request.getParameter("txt_Discount"));
        float amount = (float) (price * discount * 0.01);
        float total = price-amount;
        String description = request.getParameter("txt_Description");

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<div>");
        writer.println("Discount of :"+description);
        writer.println("</div>");
        writer.println("<div>");
        writer.println("amount :"+amount);

        writer.println("</div>");
        writer.println("<div>");
        writer.println("total :"+total);
        writer.println("</div>");

        writer.println("</html>");


    }
}
