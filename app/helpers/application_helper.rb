module ApplicationHelper
	def full_title(page_title = '')                     # Method def, optional arg
    base_title = "Review book"  # Variable assignment
    if page_title.empty?                              # Boolean test
      base_title                                      # Implicit return
    else
      page_title + " | " + base_title                 # String concatenation
    end
  end

  def image_for_book
    images = ['https://vnwriter.net/wp-content/uploads/2017/10/sach-di-tim-le-song.jpg',
      'https://vnwriter.net/wp-content/uploads/2016/11/toi-tu-hoc.gif',
      'https://znews-photo.zadn.vn/w660/Uploaded/ymnuc/2016_09_19/138875.jpg',
      'https://downloadsach.com/wp-content/uploads/2017/02/sach-hay-ve-nong-nghiep.jpg',
      'https://image.vtcns.com/files/lcm/2017/09/07/1e6a46bd-a3ac-4726-8209-b6db2fa0c80a_nhung-tam-long-cao-ca-114326.jpg',
      'https://vnwriter.net/wp-content/uploads/2017/05/sach-mac-ke-thien-ha-song-nhu-nguoi-nhat-ebook-611x1024.jpg',
      'https://isachhay.net/wp-content/uploads/2017/08/nha-gia-kim-sach-hay-nen-doc-isachhay.net_.jpg',
      'https://toplist.vn/images/800px/dac-nhan-tam-116541.jpg',
      'http://hoinhabaovietnam.vn/data/data/duytung/2017/05/09/20170508205916-so-khong.jpg',
      'https://vnwriter.net/wp-content/uploads/2017/08/sach-mac-ke-thien-ha-song-nhu-nguoi-nhat.jpg',
      'http://www.top7thuvi.com/wp-content/uploads/2017/08/qua-tre-de-chet-hanh-trinh-nuoc-my.jpg',
      'https://vnwriter.net/wp-content/uploads/2017/10/sach-the-gioi-phang.jpg',
      'http://www.sachhay.org/HinhAnhSachHay/Upload/HinhAnh/0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af19de84-2ed0-4a63-beab-30f50c754aa5.jpg',
      'https://www.truonghoc24h.com/wp-content/uploads/2017/10/cuon-sach-hay-dung-bao-gio-di-an-mot-minh.jpg',
      'https://znews-photo.zadn.vn/w660/Uploaded/NEG_Dzyrecp/2014_08_12/Me_luon_dong_hanh_cung_con.jpg',
      'http://baodansinh.vn/Images/2015/02/08/thanhhuyen/Thanh_pho_ngay_ta_yeu.jpg',
      'http://www.thuynacca.com/wp-content/uploads/2017/11/83698624-D9B0-41FB-B107-8A1FBE469A10.jpeg',
      'http://www.tranggiangstore.com/wp-content/uploads/2017/11/13nguyentac.jpg']

    return images.sample
  end
end
