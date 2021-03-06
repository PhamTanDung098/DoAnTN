﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace nha_tro
{
    public partial class TaoPhieuNhap : Form
    {
        public TaoPhieuNhap()
        {
            InitializeComponent();
        }

        private void cT_NHAP_SPBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.cT_NHAP_SPBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.nghiepVu);

        }
        //====nhan ten dang nhap tu form dang nhap
        private string tendn;
        public TaoPhieuNhap(string Message)
            : this()
        {
            tendn = Message;
        }
        private void TaoPhieuNhap_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'nghiepVu.NHACUNGCAP' table. You can move, or remove it, as needed.
            this.nHACUNGCAPTableAdapter.Fill(this.nghiepVu.NHACUNGCAP);
            // TODO: This line of code loads data into the 'nghiepVu.SANPHAM' table. You can move, or remove it, as needed.
            this.sANPHAMTableAdapter.Fill(this.nghiepVu.SANPHAM);
            // TODO: This line of code loads data into the 'nghiepVu.NHAPHANG' table. You can move, or remove it, as needed.
            this.nHAPHANGTableAdapter.Fill(this.nghiepVu.NHAPHANG);
            // TODO: This line of code loads data into the 'nghiepVu.CT_NHAP_SP' table. You can move, or remove it, as needed.
            this.cT_NHAP_SPTableAdapter.Fill(this.nghiepVu.CT_NHAP_SP);
            mANVTextEdit.ReadOnly = true;
            mANVTextEdit.Text = tendn;
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            try
            {
                this.lAY_MANVbangTENDNTableAdapter.Fill_DK(this.nghiepVu.LAY_MANVbangTENDN, mANVTextEdit.Text);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

            string MANV = lAY_MANVbangTENDNDataGridView.Rows[0].Cells[0].Value.ToString();
            nHAPHANGTableAdapter.InsertQuery("PN"+((nHAPHANGTableAdapter.SoDong())+1), MANV, dateTimePicker1.Text,"Chưa lưu");
            MessageBox.Show("Thêm thành công");

            //load
            this.nHAPHANGTableAdapter.Fill(this.nghiepVu.NHAPHANG);
        }

        private void fill_DKToolStripButton_Click(object sender, EventArgs e)
        {
        }

        private void fill_dkToolStripButton_Click_1(object sender, EventArgs e)
        {
            //try
            //{
            //    this.cT_Nhap_dkTableAdapter.Fill_dk(this.nghiepVu.CT_Nhap_dk, maNhapToolStripTextBox.Text);
            //}
            //catch (System.Exception ex)
            //{
            //    System.Windows.Forms.MessageBox.Show(ex.Message);
            //}

        }

        private void nHAPHANGComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (nHAPHANGComboBox.SelectedValue != null)
                { this.cT_Nhap_dkTableAdapter.Fill_dk(this.nghiepVu.CT_Nhap_dk, nHAPHANGComboBox.SelectedValue.ToString()); }
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            cT_NHAP_SPTableAdapter.Insert(nHAPHANGComboBox.SelectedValue.ToString(), sANPHAMComboBox.SelectedValue.ToString(), nHACUNGCAPComboBox.SelectedValue.ToString(), int.Parse(sLSpinEdit.Text), int.Parse(donGiaSpinEdit.Text));
            MessageBox.Show("Them Thanh Cong");
            //load
            this.cT_Nhap_dkTableAdapter.Fill_dk(this.nghiepVu.CT_Nhap_dk, nHAPHANGComboBox.SelectedValue.ToString());
        }

        private void button5_Click(object sender, EventArgs e)
        {
            nHAPHANGTableAdapter.DeleteQuery_MANHAP(nHAPHANGComboBox.SelectedValue.ToString());
            MessageBox.Show("Them Thanh Cong");
            //load
            this.nHAPHANGTableAdapter.Fill(this.nghiepVu.NHAPHANG);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            cT_NHAP_SPTableAdapter.DeleteQuery_NCC(nHAPHANGComboBox.SelectedValue.ToString(), sANPHAMComboBox.SelectedValue.ToString(), nHACUNGCAPComboBox.SelectedValue.ToString());
            MessageBox.Show("Xoa Thanh Cong");
            //load
            this.cT_Nhap_dkTableAdapter.Fill_dk(this.nghiepVu.CT_Nhap_dk, nHAPHANGComboBox.SelectedValue.ToString());
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cT_NHAP_SPTableAdapter.UpdateQuery(int.Parse(sLSpinEdit.Text), int.Parse(donGiaSpinEdit.Text), nHAPHANGComboBox.SelectedValue.ToString(),sANPHAMComboBox.SelectedValue.ToString());
            MessageBox.Show("Thành công");
            //load
            this.cT_Nhap_dkTableAdapter.Fill_dk(this.nghiepVu.CT_Nhap_dk, nHAPHANGComboBox.SelectedValue.ToString());
        }
    }
}
