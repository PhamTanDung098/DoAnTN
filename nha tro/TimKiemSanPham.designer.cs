﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace nha_tro
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="DTDD")]
	public partial class TimKiemSanPhamDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertKHUYENMAI(KHUYENMAI instance);
    partial void UpdateKHUYENMAI(KHUYENMAI instance);
    partial void DeleteKHUYENMAI(KHUYENMAI instance);
    partial void InsertSANPHAM(SANPHAM instance);
    partial void UpdateSANPHAM(SANPHAM instance);
    partial void DeleteSANPHAM(SANPHAM instance);
    #endregion
		
		public TimKiemSanPhamDataContext() : 
				base(global::nha_tro.Properties.Settings.Default.DTDDConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public TimKiemSanPhamDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public TimKiemSanPhamDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public TimKiemSanPhamDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public TimKiemSanPhamDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<KHUYENMAI> KHUYENMAIs
		{
			get
			{
				return this.GetTable<KHUYENMAI>();
			}
		}
		
		public System.Data.Linq.Table<SANPHAM> SANPHAMs
		{
			get
			{
				return this.GetTable<SANPHAM>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.KHUYENMAI")]
	public partial class KHUYENMAI : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _MAKHUYENMAI;
		
		private string _MASP;
		
		private string _MALINHKIEN;
		
		private string _TENKHUYENMAI;
		
		private System.Nullable<System.DateTime> _NGAYBD;
		
		private System.Nullable<System.DateTime> _NGAYKT;
		
		private System.Nullable<double> _GIATRI;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMAKHUYENMAIChanging(string value);
    partial void OnMAKHUYENMAIChanged();
    partial void OnMASPChanging(string value);
    partial void OnMASPChanged();
    partial void OnMALINHKIENChanging(string value);
    partial void OnMALINHKIENChanged();
    partial void OnTENKHUYENMAIChanging(string value);
    partial void OnTENKHUYENMAIChanged();
    partial void OnNGAYBDChanging(System.Nullable<System.DateTime> value);
    partial void OnNGAYBDChanged();
    partial void OnNGAYKTChanging(System.Nullable<System.DateTime> value);
    partial void OnNGAYKTChanged();
    partial void OnGIATRIChanging(System.Nullable<double> value);
    partial void OnGIATRIChanged();
    #endregion
		
		public KHUYENMAI()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MAKHUYENMAI", DbType="Char(20) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string MAKHUYENMAI
		{
			get
			{
				return this._MAKHUYENMAI;
			}
			set
			{
				if ((this._MAKHUYENMAI != value))
				{
					this.OnMAKHUYENMAIChanging(value);
					this.SendPropertyChanging();
					this._MAKHUYENMAI = value;
					this.SendPropertyChanged("MAKHUYENMAI");
					this.OnMAKHUYENMAIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MASP", DbType="Char(20) NOT NULL", CanBeNull=false)]
		public string MASP
		{
			get
			{
				return this._MASP;
			}
			set
			{
				if ((this._MASP != value))
				{
					this.OnMASPChanging(value);
					this.SendPropertyChanging();
					this._MASP = value;
					this.SendPropertyChanged("MASP");
					this.OnMASPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MALINHKIEN", DbType="Char(20) NOT NULL", CanBeNull=false)]
		public string MALINHKIEN
		{
			get
			{
				return this._MALINHKIEN;
			}
			set
			{
				if ((this._MALINHKIEN != value))
				{
					this.OnMALINHKIENChanging(value);
					this.SendPropertyChanging();
					this._MALINHKIEN = value;
					this.SendPropertyChanged("MALINHKIEN");
					this.OnMALINHKIENChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TENKHUYENMAI", DbType="Char(20)")]
		public string TENKHUYENMAI
		{
			get
			{
				return this._TENKHUYENMAI;
			}
			set
			{
				if ((this._TENKHUYENMAI != value))
				{
					this.OnTENKHUYENMAIChanging(value);
					this.SendPropertyChanging();
					this._TENKHUYENMAI = value;
					this.SendPropertyChanged("TENKHUYENMAI");
					this.OnTENKHUYENMAIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NGAYBD", DbType="DateTime")]
		public System.Nullable<System.DateTime> NGAYBD
		{
			get
			{
				return this._NGAYBD;
			}
			set
			{
				if ((this._NGAYBD != value))
				{
					this.OnNGAYBDChanging(value);
					this.SendPropertyChanging();
					this._NGAYBD = value;
					this.SendPropertyChanged("NGAYBD");
					this.OnNGAYBDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NGAYKT", DbType="DateTime")]
		public System.Nullable<System.DateTime> NGAYKT
		{
			get
			{
				return this._NGAYKT;
			}
			set
			{
				if ((this._NGAYKT != value))
				{
					this.OnNGAYKTChanging(value);
					this.SendPropertyChanging();
					this._NGAYKT = value;
					this.SendPropertyChanged("NGAYKT");
					this.OnNGAYKTChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GIATRI", DbType="Float")]
		public System.Nullable<double> GIATRI
		{
			get
			{
				return this._GIATRI;
			}
			set
			{
				if ((this._GIATRI != value))
				{
					this.OnGIATRIChanging(value);
					this.SendPropertyChanging();
					this._GIATRI = value;
					this.SendPropertyChanged("GIATRI");
					this.OnGIATRIChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.SANPHAM")]
	public partial class SANPHAM : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _MASP;
		
		private string _MALOAI;
		
		private string _MAKHO;
		
		private string _TENSP;
		
		private string _TINHTRANG;
		
		private System.Nullable<int> _DonGia;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMASPChanging(string value);
    partial void OnMASPChanged();
    partial void OnMALOAIChanging(string value);
    partial void OnMALOAIChanged();
    partial void OnMAKHOChanging(string value);
    partial void OnMAKHOChanged();
    partial void OnTENSPChanging(string value);
    partial void OnTENSPChanged();
    partial void OnTINHTRANGChanging(string value);
    partial void OnTINHTRANGChanged();
    partial void OnDonGiaChanging(System.Nullable<int> value);
    partial void OnDonGiaChanged();
    #endregion
		
		public SANPHAM()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MASP", DbType="Char(20) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string MASP
		{
			get
			{
				return this._MASP;
			}
			set
			{
				if ((this._MASP != value))
				{
					this.OnMASPChanging(value);
					this.SendPropertyChanging();
					this._MASP = value;
					this.SendPropertyChanged("MASP");
					this.OnMASPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MALOAI", DbType="Char(20) NOT NULL", CanBeNull=false)]
		public string MALOAI
		{
			get
			{
				return this._MALOAI;
			}
			set
			{
				if ((this._MALOAI != value))
				{
					this.OnMALOAIChanging(value);
					this.SendPropertyChanging();
					this._MALOAI = value;
					this.SendPropertyChanged("MALOAI");
					this.OnMALOAIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MAKHO", DbType="Char(20) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string MAKHO
		{
			get
			{
				return this._MAKHO;
			}
			set
			{
				if ((this._MAKHO != value))
				{
					this.OnMAKHOChanging(value);
					this.SendPropertyChanging();
					this._MAKHO = value;
					this.SendPropertyChanged("MAKHO");
					this.OnMAKHOChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TENSP", DbType="Char(51)")]
		public string TENSP
		{
			get
			{
				return this._TENSP;
			}
			set
			{
				if ((this._TENSP != value))
				{
					this.OnTENSPChanging(value);
					this.SendPropertyChanging();
					this._TENSP = value;
					this.SendPropertyChanged("TENSP");
					this.OnTENSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TINHTRANG", DbType="Char(4)")]
		public string TINHTRANG
		{
			get
			{
				return this._TINHTRANG;
			}
			set
			{
				if ((this._TINHTRANG != value))
				{
					this.OnTINHTRANGChanging(value);
					this.SendPropertyChanging();
					this._TINHTRANG = value;
					this.SendPropertyChanged("TINHTRANG");
					this.OnTINHTRANGChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DonGia", DbType="Int")]
		public System.Nullable<int> DonGia
		{
			get
			{
				return this._DonGia;
			}
			set
			{
				if ((this._DonGia != value))
				{
					this.OnDonGiaChanging(value);
					this.SendPropertyChanging();
					this._DonGia = value;
					this.SendPropertyChanged("DonGia");
					this.OnDonGiaChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
