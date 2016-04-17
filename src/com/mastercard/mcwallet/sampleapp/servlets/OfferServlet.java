package com.mastercard.mcwallet.sampleapp.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eop.api.OfferApi;
import com.eop.api.io.Offer;
import com.eop.api.io.SearchRequest;

/**
 * Servlet implementation class CartCallbackServlet
 */
public class OfferServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OfferApi api = new OfferApi();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OfferServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		session.setAttribute("offers", getOffers());
		request.getRequestDispatcher("offer.jsp").forward(request, response);
	}

	private List<Offer> getOffers() {
		SearchRequest request = new SearchRequest();
		request.setLanguage("en_US");
		return api.searchOffers(request);
	}

}
