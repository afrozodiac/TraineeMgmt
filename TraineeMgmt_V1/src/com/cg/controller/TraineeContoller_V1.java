package com.cg.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cg.dao.TraineeMgmtDao;
import com.cg.entities.Trainee;
import com.cg.service.TraineeMgmtService;

@Controller
public class TraineeContoller_V1 
{
	
	@Autowired
	TraineeMgmtService tser;
	@Autowired
	TraineeMgmtDao tdao;
	@RequestMapping(value="index")
	public String Home(Model model)
	{
		return "index";
	}
    @RequestMapping("add")
    public String insertPurchase(@Valid@ModelAttribute("tdetails")Trainee tdetails,BindingResult res,Model model)
    {
    	if(res.hasErrors())
    	{
    		model.addAttribute("tdetails",tdetails);
    		return "add";
    	}
    	else
    	{	
    		tser.addTrainee(tdetails);
    		model.addAttribute("tdetails",tdetails);
    		return "index";
    	}
    }
	@RequestMapping(value="newTrainee")
    public String showPurchasePage(Model model)
    {
    	Trainee tdetails = new Trainee();
    	model.addAttribute("tdetails",tdetails);
    	return "add";
    }
	@RequestMapping(value="search")
	public String searchId(Model model)
	{
		return "search";
	}
	@RequestMapping(value="searchId")
	public String viewPage(@RequestParam("id")Integer id,Model model)
	{
		List<Trainee> tlist=tser.search(id);
		model.addAttribute("tlist",tlist);
		return "view";
	}
	@RequestMapping(value="delete")
	public String delete(@RequestParam("id")Integer id,Model model)
	{
		tser.deleteId(id);
		return "index";
	}
	@RequestMapping(value="list")
	public String list(Model model)
	{
		List<Trainee> tlist=tser.FetchAllTrainee();
		model.addAttribute("tlist",tlist);
		return "list";
	}
	
	@RequestMapping(value="update")
	public String update(@RequestParam("id")Integer id,@RequestParam("name")String name,@RequestParam("domain")String domain,@RequestParam("location")String location,Model model)
	{
		Trainee tdetails= new Trainee();
		tdetails.setId(id);
		tdetails.setName(name);
		tdetails.setDomain(domain);
		tdetails.setLocation(location);
		tser.update(tdetails);
		return "index";
	}
	
	@RequestMapping("loginAuth")
	public String login(@RequestParam("username")String username,@RequestParam("password")String password)
	{
		if(username.equals("admin")&&password.equals("password"))
		{
			return "index";
		}
		else
		{
			return "default";
		}
	}
	@RequestMapping("defualt")
	public String LoginPage()
	{
		return "login";
	}
}
