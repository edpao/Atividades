package levels;

import globals.RenderMachine;

public class Level01 {

    private String name = "DG01";
    private char[][] lv;
    private float combatchance;
    private boolean running = true;
    private int column = 5;
    private int rows = 10;

    
    public void setLv(char[][] Lv) {
        this.lv = Lv;
    }
    public char [][] getLv() {
        return this.lv;
    }
    
    public void setCombatechance(float Combatechance) {
        this.combatchance = Combatechance;
    }
    public float getCombatechance() {
        return this.combatchance;
    }   
    
    public Level01() 
    {
        this.lv = new char [][]  {
            {'|', '-', '-', '-', '|'},
            {'^', '|', ' ', '|', '|'},
            {'^', '|', ' ', '|', '|'},
            {'^', '|', ' ', '|', '|'},
            {'^', '|', ' ', '|', '|'},
            {'|', '|', ' ', '|', '|'},
            {'|', '|', ' ', '|', '|'},
            {'|', '|', ' ', '|', '|'},
            {'|', '|', ' ', '|', '|'},
            {'|', '_', '_', '_', '|'}
        };
        this.combatchance = 0.5f;
    }
    
    public void onLoop(){
        RenderMachine rm = new RenderMachine();
    
        do{
            rm.renderLevel(lv, column, rows, name);
        }while(running);
    }
    
}
