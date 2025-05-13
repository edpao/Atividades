package globals;

public class RenderMachine
{

    public void renderLevel(char[][] lv, int column, int rows, String name)
    {
        clearConsole();
        System.out.println("Level: "+name);
        System.out.println("");
        for (int i = 0; i< rows; i++)
        {
            for (int j = 0; j< column; j++)
            {
                System.out.print(lv[i][j]);
            }
            System.out.println("");
        }
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private static void clearConsole() {
        try {
            if (System.getProperty("os.name").contains("Windows")) {
                new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
            } else {
                System.out.print("\033[H\033[2J");
                System.out.flush();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}