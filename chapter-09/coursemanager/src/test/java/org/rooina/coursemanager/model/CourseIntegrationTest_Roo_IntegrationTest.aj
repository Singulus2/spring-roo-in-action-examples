// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.rooina.coursemanager.model.CourseDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CourseIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CourseIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CourseIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: CourseIntegrationTest: @Transactional;
    
    @Autowired
    private CourseDataOnDemand CourseIntegrationTest.dod;
    
    @Test
    public void CourseIntegrationTest.testCountCourses() {
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to initialize correctly", dod.getRandomCourse());
        long count = org.rooina.coursemanager.model.Course.countCourses();
        org.junit.Assert.assertTrue("Counter for 'Course' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CourseIntegrationTest.testFindCourse() {
        org.rooina.coursemanager.model.Course obj = dod.getRandomCourse();
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to provide an identifier", id);
        obj = org.rooina.coursemanager.model.Course.findCourse(id);
        org.junit.Assert.assertNotNull("Find method for 'Course' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Course' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CourseIntegrationTest.testFindAllCourses() {
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to initialize correctly", dod.getRandomCourse());
        long count = org.rooina.coursemanager.model.Course.countCourses();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Course', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.rooina.coursemanager.model.Course> result = org.rooina.coursemanager.model.Course.findAllCourses();
        org.junit.Assert.assertNotNull("Find all method for 'Course' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Course' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CourseIntegrationTest.testFindCourseEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to initialize correctly", dod.getRandomCourse());
        long count = org.rooina.coursemanager.model.Course.countCourses();
        if (count > 20) count = 20;
        java.util.List<org.rooina.coursemanager.model.Course> result = org.rooina.coursemanager.model.Course.findCourseEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Course' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Course' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CourseIntegrationTest.testFlush() {
        org.rooina.coursemanager.model.Course obj = dod.getRandomCourse();
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to provide an identifier", id);
        obj = org.rooina.coursemanager.model.Course.findCourse(id);
        org.junit.Assert.assertNotNull("Find method for 'Course' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyCourse(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Course' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CourseIntegrationTest.testMerge() {
        org.rooina.coursemanager.model.Course obj = dod.getRandomCourse();
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to provide an identifier", id);
        obj = org.rooina.coursemanager.model.Course.findCourse(id);
        boolean modified =  dod.modifyCourse(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.rooina.coursemanager.model.Course merged = (org.rooina.coursemanager.model.Course) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Course' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CourseIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to initialize correctly", dod.getRandomCourse());
        org.rooina.coursemanager.model.Course obj = dod.getNewTransientCourse(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Course' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Course' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CourseIntegrationTest.testRemove() {
        org.rooina.coursemanager.model.Course obj = dod.getRandomCourse();
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Course' failed to provide an identifier", id);
        obj = org.rooina.coursemanager.model.Course.findCourse(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Course' with identifier '" + id + "'", org.rooina.coursemanager.model.Course.findCourse(id));
    }
    
}