<?php

namespace App\Exports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ProductExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    private $products;
    public function __construct($products)
    {
        $this->products=$products;
    }
    public function collection()
    {
        $products=$this->products;
        $formatProduct=[];
        foreach($products as $key => $item){
            $formatProduct=[
                
            ];
        }
        return Product::all();
    }
    public function headings(): array
    {
        return ["STT","Tên SP", "Danh mục","Ảnh","Giá","Số lượng",];
    }
}
