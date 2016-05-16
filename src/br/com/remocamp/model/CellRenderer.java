package br.com.remocamp.model;

import java.awt.Component;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;


public class CellRenderer extends DefaultTableCellRenderer {


    public CellRenderer() {
        super();
    }

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value,
            boolean isSelected, boolean hasFocus, int row, int column) {
        this.setHorizontalAlignment(CENTER);
        return super.getTableCellRendererComponent(table, value, isSelected,
                hasFocus, row, column);
    }
}