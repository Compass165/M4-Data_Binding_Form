package controller;

import model.MailSetting;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/")
public class SettingController {
    @GetMapping("/start")
    public String startPage(Model model) {
        model.addAttribute("email", new MailSetting());
        return ("/view");
    }

    @ModelAttribute("languageList")
    public Map<String, String > getLanguages() {
        Map<String , String > languages = new HashMap<String , String >();
        languages.put("English", "English");
        languages.put("Chinese", "Chinese");
        languages.put("Singapore", "Singapore");
        languages.put("Japanese", "Japanese");
        languages.put("Vietnamese", "Vietnamese");
        return languages;
    }

    @RequestMapping(value = "/show", method = RequestMethod.POST)
    public String showResult(@ModelAttribute("email") MailSetting email, ModelMap model) {
        model.addAttribute("language", email.getLanguage());
        model.addAttribute("pageSize", email.getPageSize());
        model.addAttribute("signature", email.getSignature());
        model.addAttribute("spamFilter", email.isSpamFilter());
        model.addAttribute("color", email.getColor());
        return "/result";
    }

}
