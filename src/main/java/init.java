
import javax.annotation.PostConstruct;
import javax.ejb.Singleton;
import javax.ejb.Startup;
import org.stagemonitor.core.Stagemonitor;

/**
 *
 * @author Teun
 */
@Singleton
@Startup
public class init {

    @PostConstruct
    void init() {
        Stagemonitor.init();
    }
}
