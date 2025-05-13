import levels.Level01;

public class app {
    public static void main(String[] args) throws Exception {
        boolean running = true;
        Level01 level = new Level01();

        level.onLoop();
    }
}