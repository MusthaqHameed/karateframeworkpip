package Karate_API;

import static org.junit.Assert.*;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.maven.surefire.shared.io.FileUtils;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.Runner.Builder;
import com.intuit.karate.junit4.Karate;



public class TestRunner_Class_Level_Parallel {

	@Test
    public void testParallel() {
        Results results = Runner.path("classpath:Karate_API").parallel(5);

    }
	
	
}


