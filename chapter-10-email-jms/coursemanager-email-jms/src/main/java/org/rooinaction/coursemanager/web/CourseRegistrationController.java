package org.rooinaction.coursemanager.web;

import org.rooinaction.coursemanager.domain.CourseRegistration;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/courseregistrations")
@Controller
@RooWebScaffold(path = "courseregistrations", formBackingObject = CourseRegistration.class)
public class CourseRegistrationController {
}
