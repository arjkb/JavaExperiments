/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jtreeprototype;

import javax.swing.JTree;
import javax.swing.event.TreeExpansionEvent;
import javax.swing.event.TreeExpansionListener;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreePath;

/**
 *
 * @author arjun
 */
public class MyJTree extends javax.swing.JFrame {

    /**
     * Creates new form MyJTree
     */
    public MyJTree() {
        initComponents();
        
        DefaultMutableTreeNode country = new DefaultMutableTreeNode("Country");
        DefaultMutableTreeNode c_brazil = new DefaultMutableTreeNode("Brazil");
        DefaultMutableTreeNode c_russia = new DefaultMutableTreeNode("Russia");
        DefaultMutableTreeNode c_india = new DefaultMutableTreeNode("India");
        DefaultMutableTreeNode c_china = new DefaultMutableTreeNode("China");
        DefaultMutableTreeNode c_sa = new DefaultMutableTreeNode("South Africa");
        
        DefaultMutableTreeNode ct_brz = new DefaultMutableTreeNode("Brazilia");
        DefaultMutableTreeNode ct_rio = new DefaultMutableTreeNode("Rio De Janeiro");
        DefaultMutableTreeNode ct_msc = new DefaultMutableTreeNode("Moscow");
        DefaultMutableTreeNode ct_kzn = new DefaultMutableTreeNode("Kazan");
        DefaultMutableTreeNode ct_mum = new DefaultMutableTreeNode("Mumbai");
        DefaultMutableTreeNode ct_del = new DefaultMutableTreeNode("New Delhi");
        DefaultMutableTreeNode ct_bjg = new DefaultMutableTreeNode("Beijing");
        DefaultMutableTreeNode ct_shn = new DefaultMutableTreeNode("Shanghai");
        DefaultMutableTreeNode ct_capt = new DefaultMutableTreeNode("Cape Town");
        DefaultMutableTreeNode ct_prt = new DefaultMutableTreeNode("Pretoria");
        
        c_brazil.add(ct_brz);
        c_brazil.add(ct_rio);
        c_russia.add(ct_msc);
        c_russia.add(ct_kzn);
        c_india.add(ct_mum);
        c_india.add(ct_del);
        c_china.add(ct_bjg);
        c_china.add(ct_shn);
        c_sa.add(ct_capt);
        c_sa.add(ct_prt);
        
        country.add(c_brazil);
        country.add(c_russia);
        country.add(c_india);
        country.add(c_china);
        country.add(c_sa);
        
        
        //jTree1 = new JTree(node);
        jTree1.setModel(new DefaultTreeModel(country));
        
        jTree1.addTreeExpansionListener( new MyTreeExpansionListener(this) );
    }
    
    public void setLabel(String label)  {
        jLabel1.setText(label);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTree1 = new javax.swing.JTree();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Countries : JTree Demo");
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        jScrollPane1.setViewportView(jTree1);

        jLabel1.setText("jLabel1");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(31, 31, 31)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 162, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 405, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 276, Short.MAX_VALUE)
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addGap(62, 62, 62)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(MyJTree.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MyJTree.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MyJTree.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MyJTree.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MyJTree().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTree jTree1;
    // End of variables declaration//GEN-END:variables
}


class MyTreeExpansionListener implements TreeExpansionListener  {

    MyJTree mjt;
            
    MyTreeExpansionListener(MyJTree mjt)    {
        this.mjt = mjt;       
    }
    
    @Override
    public void treeExpanded(TreeExpansionEvent tee) {
        System.out.println(" Expanding: " + tee.getPath());    
        mjt.setLabel(" Expanding: " + tee.getPath());
    }
    
    @Override
    public void treeCollapsed(TreeExpansionEvent tee) {
        System.out.println(" Collapsing: " + tee.getPath());
        mjt.setLabel(" Collapsing: " + tee.getPath());
    }
    
}
