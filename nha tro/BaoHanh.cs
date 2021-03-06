﻿using DevExpress.XtraEditors.Filtering.Templates;
using System;
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
    public partial class BaoHanh : Form
    {
        //====nhan ten dang nhap tu form dang nhap
        private string tendn;
        public BaoHanh(string Message)
            : this()
        {
            tendn = Message;
        }
        public BaoHanh()
        {
            InitializeComponent();
        }

        private void kHACHHANG_dkBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.kHACHHANG_dkBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.nghiepVu);

        }

        private void fill_dkToolStripButton_Click(object sender, EventArgs e)
        {


        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Length != 0)
            {
                try
                {
                    this.kHACHHANG_dkTableAdapter.Fill_dk(this.nghiepVu.KHACHHANG_dk, textBox1.Text);
                }
                catch (System.Exception ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message);
                }
            }
            else
            {
                MessageBox.Show("Chưa nhập số điện thoại or số điện thoại không có");
            
            }
        
        }
        public void loaddata()
        {
            this.dOITRATableAdapter.Fill(this.tt.DOITRA);
        }
        private void BaoHanh_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'nghiepVu.KHO1' table. You can move, or remove it, as needed.
            this.kHO1TableAdapter.Fill(this.nghiepVu.KHO1);
            // TODO: This line of code loads data into the 'tt.DATHANG_SP' table. You can move, or remove it, as needed.
            this.dATHANG_SPTableAdapter.Fill(this.tt.DATHANG_SP);
            // TODO: This line of code loads data into the 'tt.HOADON_tt' table. You can move, or remove it, as needed.
            this.hOADON_ttTableAdapter.Fill(this.tt.HOADON_tt);
            // TODO: This line of code loads data into the 'tt.DOITRA' table. You can move, or remove it, as needed.
            this.dOITRATableAdapter.Fill(this.tt.DOITRA);
            // TODO: This line of code loads data into the 'nghiepVu.SANPHAM' table. You can move, or remove it, as needed.
            this.sANPHAMTableAdapter.Fill(this.nghiepVu.SANPHAM);
            // TODO: This line of code loads data into the 'tt.DOITRA_SP' table. You can move, or remove it, as needed.
            //this.dOITRA_SPTableAdapter.Fill(this.tt.DOITRA_SP);
            // TODO: This line of code loads data into the 'nghiepVu.LOIDONGUOIDUNG' table. You can move, or remove it, as needed.
            this.lOIDONGUOIDUNGTableAdapter.Fill(this.nghiepVu.LOIDONGUOIDUNG);
            // TODO: This line of code loads data into the 'nghiepVu.LOIDONHASX' table. You can move, or remove it, as needed.
            this.lOIDONHASXTableAdapter.Fill(this.nghiepVu.LOIDONHASX);

            int dongdulieu = int.Parse(dOITRATableAdapter.demrows().ToString()) + 1;
            mADOITRATextEdit.Text = dongdulieu.ToString();
            mADOITRATextEdit.ReadOnly = true;

            mAKHTextEdit.ReadOnly = true;
            tENDOITRATextEdit.Text = "Đổi máy";

        }
        string tempMaDoiTra = "";
        private void button2_Click(object sender, EventArgs e)
        {
            if (sELECT_DATA_HDComboBox.SelectedValue != null && selectSPDaMuaTheoMaHDComboBox.SelectedValue != null && sANPHAMComboBox1.SelectedValue != null)
            {
                //insert dOITRA_spTableAdapter         
                dOITRA_SPTableAdapter.InsertQuery(dOITRAComboBox.SelectedValue.ToString(), selectSPDaMuaTheoMaHDComboBox.SelectedValue.ToString(), "khong", lOIDONHASXComboBox.SelectedValue.ToString());
                // TODO: This line of code loads data into the 'tt.DOITRA_SP' table. You can move, or remove it, as needed.
                try
                {
                    this.dOITRA_SPTableAdapter.Fill(this.tt.DOITRA_SP, dOITRAComboBox.SelectedValue.ToString());
                }
                catch (System.Exception ex)
                {
                    //System.Windows.Forms.MessageBox.Show(ex.Message);
                }
                MessageBox.Show("Thành Công");
            }
            else
            {
                MessageBox.Show("Chưa có thông tin đổi trả");
            }
        }

        private void fillToolStripButton_Click(object sender, EventArgs e)
        {


        }
        ThongKe ThongKe = new ThongKe();
        private void button4_Click(object sender, EventArgs e)
        {
            try
            {
                int dongiacu = int.Parse(thongKe_TinhDoanhThuTableAdapter.select_dongia_masp(comboBox1.SelectedValue.ToString()).ToString());
                int dongiamoi = int.Parse(thongKe_TinhDoanhThuTableAdapter.select_dongia_masp(selectSPDaMuaTheoMaHDComboBox.SelectedValue.ToString()).ToString());
                //update SPlay trong bang doitra
                dOITRATableAdapter.Update_SPLay(sANPHAMComboBox1.SelectedValue.ToString(), dOITRAComboBox.SelectedValue.ToString());
                //update chenhlech va madoitra trong bang hoadon
                hOADON_ttTableAdapter.Update_MAHD_CHECHLENH(textBox2.Text, dOITRAComboBox.SelectedValue.ToString(), int.Parse(sELECT_DATA_HDComboBox.SelectedValue.ToString()));
                MessageBox.Show("Đổi trả thành công");
                //update sl trong kho SP DOI +1
                string maspdoi = kHO1TableAdapter.select_masp(selectSPDaMuaTheoMaHDComboBox.Text.Trim()).ToString();
                kHO1TableAdapter.UPDATE_SP_DOI(maspdoi);
                //UPDATE SL TRONG KHO SP LAY -1
                kHO1TableAdapter.UPDATE_SP_LAY(sANPHAMComboBox1.SelectedValue.ToString());
                //loaddata
                try
                {
                    this.xuat_hd_chenhlechTableAdapter.Fill(this.tt.xuat_hd_chenhlech, ((int)(System.Convert.ChangeType(sELECT_DATA_HDComboBox.SelectedValue.ToString(), typeof(int)))));
                }
                catch (System.Exception ex)
                {
                    // System.Windows.Forms.MessageBox.Show(ex.Message);
                }
                //xuat hoa don
                ThongKe.xuatfile_HD_DoiTra(xuat_hd_chenhlechDataGridView, sELECT_DATA_HDComboBox.SelectedValue.ToString(), textBox2.Text, DateTime.Now.ToString(), "Hd_Doi_SP");
                tempMaDoiTra = "";
            }
            catch(Exception ex)
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin để thực hiện");
            
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void sANPHAMComboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void groupBox4_Enter(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            
            /*            dOITRATableAdapter.Update_tendoiTra(button3.Text, tempMaDoiTra);
            tempMaDoiTra = "";
            BaoHanh_SP_LK BaoHanh_SP_LK = new BaoHanh_SP_LK(tendn);
            BaoHanh_SP_LK.ShowDialog();*/
        }

        private void fillToolStripButton_Click_1(object sender, EventArgs e)
        {


        }

        private void kHACHHANG_dkDataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                this.sELECT_DATA_HDTableAdapter.Fill(this.tt.SELECT_DATA_HD, kHACHHANG_dkDataGridView.CurrentRow.Cells[0].Value.ToString());
            }
            catch (System.Exception ex)
            {
                //System.Windows.Forms.MessageBox.Show(ex.Message);
            }

            mAKHTextEdit.Text = kHACHHANG_dkDataGridView.CurrentRow.Cells[0].Value.ToString();


        }

        private void sELECT_DATA_HDDataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            /*            textBox2.Text = sELECT_DATA_HDDataGridView.CurrentRow.Cells[0].Value.ToString();*/
        }

        private void button5_Click(object sender, EventArgs e)
        {

        }

        private void fillToolStripButton_Click_2(object sender, EventArgs e)
        {

        }

        private void fillToolStripButton_Click_3(object sender, EventArgs e)
        {


        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void sELECT_DATA_HDComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                this.selectSPDaMuaTheoMaHDTableAdapter.Fill(this.nghiepVu.selectSPDaMuaTheoMaHD, ((int)(System.Convert.ChangeType(sELECT_DATA_HDComboBox.SelectedValue.ToString(), typeof(int)))));
            }
            catch (System.Exception ex)
            {
                //System.Windows.Forms.MessageBox.Show(ex.Message);
            }

            try
            {
                this.xuat_hd_chenhlechTableAdapter.Fill(this.tt.xuat_hd_chenhlech, ((int)(System.Convert.ChangeType(sELECT_DATA_HDComboBox.SelectedValue.ToString(), typeof(int)))));
            }
            catch (System.Exception ex)
            {
               // System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void selectSPDaMuaTheoMaHDComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void sANPHAMComboBox1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            int dongiacu = int.Parse(thongKe_TinhDoanhThuTableAdapter.select_dongia_masp(selectSPDaMuaTheoMaHDComboBox.SelectedValue.ToString()).ToString());
            int dongiamoi = int.Parse(thongKe_TinhDoanhThuTableAdapter.select_dongia_masp(sANPHAMComboBox1.SelectedValue.ToString()).ToString());
            chenhlechaa = (dongiamoi - (dongiacu * 80) / 100);
            textBox2.Text = chenhlechaa.ToString();


        }

        int chenhlechaa = 0;

        private void label5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
/*            System.Globalization.CultureInfo culture = new System.Globalization.CultureInfo("en-US");
            decimal value = decimal.Parse(textBox2.Text, System.Globalization.NumberStyles.AllowThousands);
            textBox2.Text = String.Format(culture, "{0:N0}", value);
            textBox2.Select(textBox2.Text.Length, 0);*/

        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            
            dOITRATableAdapter.Insert(mADOITRATextEdit.Text, mAKHTextEdit.Text,dateTimePicker1.Value.ToString("dd-MM-yyyy"), tENDOITRATextEdit.Text, "");
            MessageBox.Show("Thêm Thành công!!!");
            loaddata();
        }

        private void dOITRAComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                this.dOITRA_SPTableAdapter.Fill(this.tt.DOITRA_SP, dOITRAComboBox.SelectedValue.ToString());
            }
            catch (System.Exception ex)
            {
                //System.Windows.Forms.MessageBox.Show(ex.Message);
            }
        }
    }
}
