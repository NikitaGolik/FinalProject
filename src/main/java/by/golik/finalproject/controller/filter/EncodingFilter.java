package by.golik.finalproject.controller.filter;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import javax.servlet.*;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * CharacterEncodingFilter class is used to set encoding for body of the
 * ServletRequest and ServletResponse.
 * @author Nikita Golik
 */
public class EncodingFilter implements Filter {
    private final static Logger logger = LogManager.getLogger(EncodingFilter.class);
    private static final String CONTENT_TYPE = "text/html; charset=UTF-8";
    private static final String CHARACTER_ENCODING = "UTF-8";
    private ServletContext servletContext;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        servletContext = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException, UnsupportedEncodingException {
        request.setCharacterEncoding(CHARACTER_ENCODING);
        response.setCharacterEncoding(CHARACTER_ENCODING);
        response.setContentType(CONTENT_TYPE);
        logger.log(Level.INFO, "charset encoding was set.");
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
    }
}
