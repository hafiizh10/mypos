<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Sale_m extends CI_Model
{
    public function invoice_no()
    {
        // invoice count berdasarkan tanggal reset perhari
        $sql = "SELECT MAX(MID(invoice,9,4)) AS invoice_no 
        FROM t_sale 
        WHERE MID(invoice,3,6) = DATE_FORMAT(CURDATE(), '%y%m%d')";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $row = $query->row();
            $n = ((int)$row->invoice_no) + 1;
            $no = sprintf("%'.04d", $n);
        } else {
            $no = "0001";
        }
        $invoice = "MP" . date('ymd') . $no;
        return $invoice;
    }

    public function get_barcode()
    {
        $this->db->select('t_stock.stock_id, p_item.barcode, p_item.name as item_name, qty, date, detail, supplier.name as supplier_name, p_item.item_id');
        $this->db->from('t_stock');
        $this->db->join('p_item', 't_stock.item_id = p_item.item_id');
        $this->db->join('supplier', 't_stock.supplier_id = supplier.supplier_id', 'left');
        $this->db->where('type', 'in');
        $this->db->order_by('stock_id', 'desc');
        $query = $this->db->get();
        return $query;
    }
}
