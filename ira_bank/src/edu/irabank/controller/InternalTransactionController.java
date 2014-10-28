package edu.irabank.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import edu.irabank.dto.UserDTO;
import edu.irabank.form.InternalTransactionFormBean;
import edu.irabank.service.InternalTransactionService;
import edu.irabank.service.TransactionService;
import edu.irabank.service.UserService;
import edu.irabank.service.impl.InternalTransactionServiceImpl;
/**
 * @author Rakesh Subramanian
 *
 */
@Controller
@SessionAttributes
public class InternalTransactionController 
{
	@Autowired
	private TransactionService transactionService; 
	@Autowired
	private InternalTransactionService internalTransactionService;

	@RequestMapping(value="SampTrans", method = RequestMethod.GET)
	public ModelAndView sampTransRoute( HttpSession sessionID)
	{//userId
		String userName = (String)sessionID.getAttribute("userName");
		System.out.println("userName is:" + userName);
		int userId = (int)sessionID.getAttribute("userId");
		System.out.println("userId is:" + userId);
		return new ModelAndView("/ExternalUsers/Transfer_funds");
		
	}
	@RequestMapping(value="Transfer", method = RequestMethod.POST)
	public ModelAndView createTrans(@ModelAttribute("trans") InternalTransactionFormBean trans, HttpSession sessionID,ModelMap model,HttpServletRequest request)
	{
		String Accountnum = transactionService.getAccountNumberbyUserID((Integer)sessionID.getAttribute("userId"));
		request.setAttribute("TextValue",Accountnum);
		System.out.println("Account number in controller is:"+Accountnum);
		String userName = (String)sessionID.getAttribute("userName");
		System.out.println("userName is:" + userName);
		int userId = (int)sessionID.getAttribute("userId");
		System.out.println("userName is:" + userId);
		boolean isCreateSuccess = internalTransactionService.setTransactionDetails(trans, userId);
		try{//System.out.println("Entered Try Loop for CreateTrans:"+isCreateSuccess);
		if(isCreateSuccess == true)
		{
			//internalTransactionService.setRequestDetails(trans, userId);
			model.addAttribute("userRegistrationStatus", "Transaction Done successfully");
			model.addAttribute("userName", userName);

		}
		
		}
		catch(Exception e){
			System.out.println("Exception: "+e);
	
		}
		return new ModelAndView("/ExternalUsers/Transfer_funds",model);
	}

}
