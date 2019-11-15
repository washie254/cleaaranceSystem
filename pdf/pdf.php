<?php
    require "fpdf.php";
    
    $db = new PDO('mysql:host=localhost;dbname=dkut_clearance_system;','root','');
    //$reg = 'C025-02-0029/2015'; 

    class myPDF extends FPDF{
        function header(){
            $this->Image('logo.png',10,6);
            $this->SetFont('Arial','B',14);
            $this->Cell(276,5,'DEPARTMENTS CLEARANCE FORM',0,0,'C');
            $this->Ln();
            $this->SetFont('Times','',12);
            $this->Cell(276, 10, 'Student clearance form from all the necessary departments',0,0,'C');
            $this->Ln(40);
        }
        function footer(){
            $this->SetY(-15);
            $this->SetFont('Arial','',8);
            $this->Cell(0,10,'Page',0,0,'C');
        }
        function headerTable(){
            $this->SetFont('Times','',12);
            $this->Cell(30,10,'student#',1,0,'C');
            $this->Cell(70,10,'Registration',1,0,'C');
            $this->Cell(70,10,'Email',1,0,'C');
            $this->Ln();
        }
        function viewUser($db){
            $this->SetFont('Times','',12);
            $stmt = $db->query("SELECT *FROM users where username='C025-02-0029/2015'");
            while($data = $stmt->fetch(PDO::FETCH_OBJ)){
                $this->Cell(30,10,$data->id,1,0,'C');
                $this->Cell(70,10,$data->username,1,0,'L');
                $this->Cell(70,10,$data->email,1,0,'L');
                $this->Ln();
            }
        }
    }  

    $pdf = new myPDF();
    $pdf->AliasNbPages();
    $pdf->AddPage('L','A4',0);
    $pdf->headerTable();
    $pdf->viewUser($db);
    $pdf->output();

?>