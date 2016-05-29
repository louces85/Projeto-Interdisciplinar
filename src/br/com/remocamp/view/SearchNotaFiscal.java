/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.remocamp.view;

import br.com.remocamp.controller.NotaFiscalController;
import br.com.remocamp.model.CellRenderer;
import br.com.remocamp.model.NotaFiscal;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumn;

/**
 *
 * @author fabiano
 */
public class SearchNotaFiscal extends javax.swing.JInternalFrame {

    /**
     * Creates new form SearchNotaFiscal
     */
    private NotaFiscalController controller = new NotaFiscalController();
    private DefaultTableModel tabelaModelo;
    private  TableCellRenderer tcr;
    
    public SearchNotaFiscal() {
        initComponents();
        dateChooserInicio.setEnabled(false);
        dateChooserFim.setEnabled(false);
        configTable();
        tabelaInicial();
    }

    public final void tabelaInicial(){
         tabelaModelo = controller.selectNotaFiscalAll(tabelaModelo);
     }
    
    private void configTable(){
    
        tabelaConsultaNotaFiscal.setModel(new DefaultTableModel(new Object[][]{}, new String[]{"Nº Nota", "Razão Social", "Data de Emissão"}) {

            @Override
            public boolean isCellEditable(int row, int col) {
                return false;
            }

        });
        tabelaModelo = (DefaultTableModel) tabelaConsultaNotaFiscal.getModel();
        tcr = new CellRenderer();
        
        for(int i=0; i< tabelaConsultaNotaFiscal.getColumnCount() ; i++){
            TableColumn column =  tabelaConsultaNotaFiscal.getColumnModel().getColumn(i);
            column.setCellRenderer(tcr);
        }
    
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelPesquisa = new javax.swing.JPanel();
        btnPesquisar = new javax.swing.JButton();
        txtPesquisa = new javax.swing.JTextField();
        lbRazaoSocial = new javax.swing.JLabel();
        dateChooserInicio = new com.toedter.calendar.JDateChooser();
        dateChooserFim = new com.toedter.calendar.JDateChooser();
        checkBoxHabilitar = new javax.swing.JCheckBox();
        panelTable = new javax.swing.JPanel();
        scrollPaneTable = new javax.swing.JScrollPane();
        tabelaConsultaNotaFiscal = new javax.swing.JTable();

        setClosable(true);
        setTitle("Consulta Nota Fiscal");

        panelPesquisa.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "Pesquisa"));

        btnPesquisar.setText("Pesquisar");

        lbRazaoSocial.setText("Razão Social :");

        dateChooserInicio.setBorder(javax.swing.BorderFactory.createTitledBorder("Inicio"));

        dateChooserFim.setBorder(javax.swing.BorderFactory.createTitledBorder("Fim"));

        checkBoxHabilitar.setText("Habilitar");

        javax.swing.GroupLayout panelPesquisaLayout = new javax.swing.GroupLayout(panelPesquisa);
        panelPesquisa.setLayout(panelPesquisaLayout);
        panelPesquisaLayout.setHorizontalGroup(
            panelPesquisaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelPesquisaLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(panelPesquisaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(panelPesquisaLayout.createSequentialGroup()
                        .addComponent(dateChooserInicio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(dateChooserFim, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(checkBoxHabilitar))
                    .addGroup(panelPesquisaLayout.createSequentialGroup()
                        .addComponent(lbRazaoSocial)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtPesquisa, javax.swing.GroupLayout.PREFERRED_SIZE, 239, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addComponent(btnPesquisar, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        panelPesquisaLayout.setVerticalGroup(
            panelPesquisaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, panelPesquisaLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(panelPesquisaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lbRazaoSocial, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(panelPesquisaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btnPesquisar, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtPesquisa, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addGroup(panelPesquisaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(checkBoxHabilitar)
                    .addComponent(dateChooserInicio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(dateChooserFim, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        panelTable.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        tabelaConsultaNotaFiscal.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tabelaConsultaNotaFiscal.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tabelaConsultaNotaFiscalMouseClicked(evt);
            }
        });
        scrollPaneTable.setViewportView(tabelaConsultaNotaFiscal);

        javax.swing.GroupLayout panelTableLayout = new javax.swing.GroupLayout(panelTable);
        panelTable.setLayout(panelTableLayout);
        panelTableLayout.setHorizontalGroup(
            panelTableLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelTableLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(scrollPaneTable, javax.swing.GroupLayout.DEFAULT_SIZE, 592, Short.MAX_VALUE)
                .addContainerGap())
        );
        panelTableLayout.setVerticalGroup(
            panelTableLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelTableLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(scrollPaneTable, javax.swing.GroupLayout.DEFAULT_SIZE, 418, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(panelPesquisa, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(panelTable, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(panelPesquisa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(panelTable, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tabelaConsultaNotaFiscalMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tabelaConsultaNotaFiscalMouseClicked

        if(evt.getClickCount()==2){
            int i = tabelaConsultaNotaFiscal.getSelectedRow();
            String numeroNota = tabelaConsultaNotaFiscal.getValueAt(i, 0)+"";
            NotaFiscalController controller = new NotaFiscalController();
            NotaFiscal nota = controller.getNota(Integer.parseInt(numeroNota.trim()));
            
            NotaFiscalFrame notaFrame = new NotaFiscalFrame(nota);
            Principal.desktopPane.add(notaFrame);
            notaFrame.setVisible(true);
            
        }
        
    }//GEN-LAST:event_tabelaConsultaNotaFiscalMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnPesquisar;
    private javax.swing.JCheckBox checkBoxHabilitar;
    private com.toedter.calendar.JDateChooser dateChooserFim;
    private com.toedter.calendar.JDateChooser dateChooserInicio;
    private javax.swing.JLabel lbRazaoSocial;
    private javax.swing.JPanel panelPesquisa;
    private javax.swing.JPanel panelTable;
    private javax.swing.JScrollPane scrollPaneTable;
    private javax.swing.JTable tabelaConsultaNotaFiscal;
    private javax.swing.JTextField txtPesquisa;
    // End of variables declaration//GEN-END:variables
}
