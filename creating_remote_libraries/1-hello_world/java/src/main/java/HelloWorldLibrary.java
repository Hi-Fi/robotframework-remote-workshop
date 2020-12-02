import org.robotframework.javalib.library.AnnotationLibrary;

public class HelloWorldLibrary extends AnnotationLibrary {
	public static final String ROBOT_LIBRARY_SCOPE = "GLOBAL";

	public HelloWorldLibrary() {
		super("com/github/hi_fi/helloworldlibrary/keywords/**");
    }
}