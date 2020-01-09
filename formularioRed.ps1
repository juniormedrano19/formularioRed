[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")  

$textbox1 = New-Object 'System.Windows.Forms.TextBox'
$textbox3 = New-Object 'System.Windows.Forms.TextBox'
$textbox2 = New-Object 'System.Windows.Forms.TextBox'
$Button = New-Object 'System.Windows.Forms.Button'
$dataGridView = New-Object 'System.Windows.Forms.DataGridView'
$label2 = New-Object 'system.Windows.Forms.Label'
$label3 = New-Object 'system.Windows.Forms.Label'
$Groupbox1 = New-Object 'system.Windows.Forms.Groupbox'
$Groupbox2 = New-Object 'system.Windows.Forms.Groupbox'
$comboBox2 = New-Object 'system.Windows.Forms.ComboBox'
$comboBox3 = New-Object 'system.Windows.Forms.ComboBox'
$comboBox4=New-Object 'system.Windows.Forms.ComboBox'
$comboBox5=New-Object 'system.Windows.Forms.ComboBox'
$Button1 = New-Object 'System.Windows.Forms.Button'
$Button2 = New-Object 'System.Windows.Forms.Button'
$Button3 = New-Object 'System.Windows.Forms.Button'
$Button4 = New-Object 'System.Windows.Forms.Button'
$Button5 = New-Object 'System.Windows.Forms.Button'
$textbox11 = New-Object 'System.Windows.Forms.TextBox'
$textbox12 = New-Object 'System.Windows.Forms.TextBox'
$textbox13 = New-Object 'System.Windows.Forms.TextBox'
$textbox14 = New-Object 'System.Windows.Forms.TextBox'
$textbox15= New-Object 'System.Windows.Forms.TextBox'

$Form = New-Object System.Windows.Forms.Form 




$Form.Size = New-Object System.Drawing.Size(1100,750)  
$Form.StartPosition = "CenterScreen" 
$Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Sizable
$Form.MaximizeBox = $false
$Form.Text = "FORMULARIO DE RED" 
# This base64 string holds the bytes that make up the orange 'G' icon (just an example for a 32x32 pixel image)
#$iconBase64      = 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAZdEVYdFNvZnR3YXJlAHBhaW50Lm5ldCA0LjAuMTnU1rJkAAAB50lEQVRIS7WWzytEURTHZ2FhaWFhYWFhYWFhaWFh6c+wsGCapJBJU0hRSrOgLBVSmkQoSpqyUJISapIFJU0i1KQp1PG9826vO9+Z97Pr22dz3pxzv/PO/fUSkvxfOLYOx9bh2DocBzPZKlPtku2VuS7JtMlwIydUw7EnGO50Rd4ehPRdlru87GWUMZVU4LgOqLza0cP56PdHNga4NthgsUc+i3qIQOH9qDzAYLZTyiVd7Ah/8/lGztclNyLbY5JfksKxeuiKRvAzwOy93OsyR+9Pam6HajLHm5UfXhTQT34GqDH1eCGjTZxjkmqQmQ5+6Gdgth5NQLsoIRwca7AoTZ1k1UM0p7Y/QXCsof4sdOvRrRlgeZgyu49eY/0cTDO76ShzcJnTQ0O0NvA2XioWqjIrcKy5PdQ1kLl90CKsVC9F2GiYVVPuiQaDiRb1TzGWw9eHzoEiGGwO6hpHWFRe04vuu4pggCPIFPwowSWmAXa/qdKr5zaOaQBwyps6W+UEh/gGtasFlrjCKC2+ATia15WucHpf76vna/2ylVLntnmeRzbApsUQ4RXZwAFnAC7eMMLNSrWhDEC6RfUac1D3+sRew87HhVzvC4PjYLBecRxhDsByn/qEoYRqOLYOx9bh2DocWyaZ+APgBBKhVfsHwAAAAABJRU5ErkJggg=='
$iconBase64      = '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'
$iconBytes       = [Convert]::FromBase64String($iconBase64)
$stream          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
$stream.Write($iconBytes, 0, $iconBytes.Length);
$iconImage       = [System.Drawing.Image]::FromStream($stream, $true)
$Form.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())


$label                           = New-Object system.Windows.Forms.Label
$label.text                      = "LA ACCION SE REALIZARA EN :"
$label.AutoSize                  = $true
$label.width                     = 40
$label.height                    = 30
$label.location                  = New-Object System.Drawing.Point(35,10)
$label.Font                      = 'Comic Sans MS,10'
$Form.Controls.Add($label) 
######################

 
###################

#####################






function Ubicacion{
    $dataGridView.Rows.Clear()
                $dataGridView.DataSource = $null
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
    
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "TXT (*.txt)| *.txt"
    $OpenFileDialog.ShowDialog() | Out-Null
 $prueba2= Get-Content $OpenFileDialog.FileName

 $acumulador=0;
 $acumulador2=0;
 $acumulador3=0;
 $acumulador4=0;
 $acumulador5=0;
 $acumulador6=0;
 

foreach($prueba1 in $prueba2){
   
    $hola=$prueba1.Trim();
$valor=$hola.split(".");
$resultado=$valor[2]
if($resultado -eq '60'){
$acumulador++;

}
else{
    if($resultado -eq '61'){
        $acumulador2++;
        
        }
        else{
            if($resultado -eq '62'){
                $acumulador3++;
                
                }
                else{
                    if($resultado -eq '63'){
                        $acumulador4++;
                        
                        }
                        else{
                            if($resultado -eq '64'){
                                $acumulador5++;
                                
                                }
                                else{
                                    if($resultado -eq '65'){
                                        $acumulador6++;
                                        
                                        } 
                                }
                        }
                }
        }
}




}

$totalRegistros=$acumulador+$acumulador2+$acumulador3+$acumulador4+$acumulador5+$acumulador6;









 $dataGridView.Size=New-Object System.Drawing.Size(240,230)
 $dataGridView.Location= New-Object System.Drawing.Point(460,55)
 $Form.Controls.Add($dataGridView)
 $dataGridView.ColumnCount = 2
 $dataGridView.ColumnHeadersVisible = $true;
 $dataGridView.Rows.Add('Registros RED 60',$acumulador)
 $dataGridView.Rows.Add('Registros RED 61',$acumulador2)
 $dataGridView.Rows.Add('Registros RED 62',$acumulador3)
 $dataGridView.Rows.Add('Registros RED 63',$acumulador4)
 $dataGridView.Rows.Add('Registros RED 64',$acumulador5)
 $dataGridView.Rows.Add('Registros RED 65',$acumulador6)
 $dataGridView.Rows.Add('Registros INVALIDOS',$totalRegistros)
 $dataGridView.Rows.Add('TOTAL DE REGISTROS',$totalRegistros)
 $dataGridView.Columns[0].width='140'
 $dataGridView.Columns[1].width='50'
 $dataGridView.Columns[0].Name = "Número de Registros"
 $dataGridView.Columns[1].Name = "Cantidad"

}

#Creación de formulario Nuevas Rutas
function routesForm{
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")  
    $Label1=New-Object 'system.Windows.Forms.Label'
    $Label2=New-Object 'system.Windows.Forms.Label'
    $Label3=New-Object 'system.Windows.Forms.Label'
    $Label4=New-Object 'system.Windows.Forms.Label'
    $Label5=New-Object 'system.Windows.Forms.Label'
    $Label6=New-Object 'system.Windows.Forms.Label'
    $Label7=New-Object 'system.Windows.Forms.Label'
    $Label8=New-Object 'system.Windows.Forms.Label'
    $Label9=New-Object 'system.Windows.Forms.Label'
    $Label10=New-Object 'system.Windows.Forms.Label'
    $Label11=New-Object 'system.Windows.Forms.Label'
    $Label12=New-Object 'system.Windows.Forms.Label'
    $Label13=New-Object 'system.Windows.Forms.Label'
    $Label14=New-Object 'system.Windows.Forms.Label'
    $Label15=New-Object 'system.Windows.Forms.Label'
    $Label16=New-Object 'system.Windows.Forms.Label'
    $Label17=New-Object 'system.Windows.Forms.Label'
    $Label18=New-Object 'system.Windows.Forms.Label'
    $Label19=New-Object 'system.Windows.Forms.Label'
    $Label20=New-Object 'system.Windows.Forms.Label'
    $Label21=New-Object 'system.Windows.Forms.Label'
    $Label22=New-Object 'system.Windows.Forms.Label'
    $Label23=New-Object 'system.Windows.Forms.Label'
    $Label24=New-Object 'system.Windows.Forms.Label'
    $Label25=New-Object 'system.Windows.Forms.Label'
    $Label26=New-Object 'system.Windows.Forms.Label'
    $Label27=New-Object 'system.Windows.Forms.Label'
    $Label28=New-Object 'system.Windows.Forms.Label'
    $Label29=New-Object 'system.Windows.Forms.Label'
    $Label30=New-Object 'system.Windows.Forms.Label'
    $Label31=New-Object 'system.Windows.Forms.Label'
    $Label32=New-Object 'system.Windows.Forms.Label'
    $Label33=New-Object 'system.Windows.Forms.Label'
    $Label34=New-Object 'system.Windows.Forms.Label'
    $Label35=New-Object 'system.Windows.Forms.Label'
    $Label36=New-Object 'system.Windows.Forms.Label'
    $Label37=New-Object 'system.Windows.Forms.Label'
    $Label38=New-Object 'system.Windows.Forms.Label'
    $Label39=New-Object 'system.Windows.Forms.Label'
    $Label40=New-Object 'system.Windows.Forms.Label'
    $Label41=New-Object 'system.Windows.Forms.Label'
    $Label42=New-Object 'system.Windows.Forms.Label'
    $Label43=New-Object 'system.Windows.Forms.Label'
    $Label44=New-Object 'system.Windows.Forms.Label'
    $Label45=New-Object 'system.Windows.Forms.Label'
    $Label46=New-Object 'system.Windows.Forms.Label'
    $Label47=New-Object 'system.Windows.Forms.Label'
    $Label48=New-Object 'system.Windows.Forms.Label'
   $TextBox1=New-Object 'system.Windows.Forms.TextBox'
   $TextBox2=New-Object 'system.Windows.Forms.TextBox'
   $TextBox3=New-Object 'system.Windows.Forms.TextBox'
   $TextBox4=New-Object 'system.Windows.Forms.TextBox'
   $TextBox5=New-Object 'system.Windows.Forms.TextBox'
   $TextBox6=New-Object 'system.Windows.Forms.TextBox'
   $TextBox7=New-Object 'system.Windows.Forms.TextBox'
   $TextBox8=New-Object 'system.Windows.Forms.TextBox'
   $TextBox9=New-Object 'system.Windows.Forms.TextBox'
   $TextBox10=New-Object 'system.Windows.Forms.TextBox'
   $TextBox11=New-Object 'system.Windows.Forms.TextBox'
   $TextBox12=New-Object 'system.Windows.Forms.TextBox'
   $TextBox13=New-Object 'system.Windows.Forms.TextBox'
   $TextBox14=New-Object 'system.Windows.Forms.TextBox'
   $TextBox15=New-Object 'system.Windows.Forms.TextBox'
   $TextBox16=New-Object 'system.Windows.Forms.TextBox'
   $TextBox17=New-Object 'system.Windows.Forms.TextBox'
   $TextBox18=New-Object 'system.Windows.Forms.TextBox'
   $TextBox19=New-Object 'system.Windows.Forms.TextBox'
   $TextBox20=New-Object 'system.Windows.Forms.TextBox'
   $TextBox21=New-Object 'system.Windows.Forms.TextBox'
   $TextBox22=New-Object 'system.Windows.Forms.TextBox'
   $TextBox23=New-Object 'system.Windows.Forms.TextBox'
   $TextBox24=New-Object 'system.Windows.Forms.TextBox'
   $TextBox25=New-Object 'system.Windows.Forms.TextBox'
   $TextBox26=New-Object 'system.Windows.Forms.TextBox'
   $TextBox27=New-Object 'system.Windows.Forms.TextBox'
   $TextBox28=New-Object 'system.Windows.Forms.TextBox'
   $TextBox29=New-Object 'system.Windows.Forms.TextBox'
   $TextBox30=New-Object 'system.Windows.Forms.TextBox'
   $TextBox31=New-Object 'system.Windows.Forms.TextBox'
   $TextBox32=New-Object 'system.Windows.Forms.TextBox'
   $ComboBox1=New-Object 'system.Windows.Forms.ComboBox'
   $ComboBox2=New-Object 'system.Windows.Forms.ComboBox'
   $ComboBox3=New-Object 'system.Windows.Forms.ComboBox'
   $ComboBox4=New-Object 'system.Windows.Forms.ComboBox'
   $ComboBox5=New-Object 'system.Windows.Forms.ComboBox'
   $ComboBox6=New-Object 'system.Windows.Forms.ComboBox'
   $ComboBox7=New-Object 'system.Windows.Forms.ComboBox'
   $ComboBox8=New-Object 'system.Windows.Forms.ComboBox'
   $Button1=New-Object 'system.Windows.Forms.Button'
   


    ############### CREACION DEL ELEMENTO ############
    $Form2 = New-Object System.Windows.Forms.Form 
    $Form2.Size = New-Object System.Drawing.Size(1100,750)  
    $Form2.StartPosition = "CenterScreen" 
    $Form2.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Sizable
    $Form2.MaximizeBox = $false
    $Form2.Text = "ROUTES" 

    if($ComboBox5.SelectedItem -eq '1'){
        $Form2.Controls.Add($Label1)
        $Form2.Controls.Add($Label2)
        $Form2.Controls.Add($Label3)
        $Form2.Controls.Add($Label4)
        $Form2.Controls.Add($Label5)
        $Form2.Controls.Add($Label6)
        $Form2.Controls.Add($TextBox2)
        $Form2.Controls.Add($TextBox3)
        $Form2.Controls.Add($TextBox4)
        $Form2.Controls.Remove($Label7)
$Form2.Controls.Remove($Label8)
$Form2.Controls.Remove($Label9)
$Form2.Controls.Remove($Label10)
$Form2.Controls.Remove($Label11)
$Form2.Controls.Remove($Label12)
$Form2.Controls.Remove($Label13)
$Form2.Controls.Remove($Label14)
$Form2.Controls.Remove($Label15)
$Form2.Controls.Remove($Label16)
$Form2.Controls.Remove($Label17)
$Form2.Controls.Remove($Label18)
$Form2.Controls.Remove($Label19)
$Form2.Controls.Remove($Label20)
$Form2.Controls.Remove($Label21)
$Form2.Controls.Remove($Label22)
$Form2.Controls.Remove($Label23)
$Form2.Controls.Remove($Label24)
$Form2.Controls.Remove($Label25)
$Form2.Controls.Remove($Label26)
$Form2.Controls.Remove($Label27)
$Form2.Controls.Remove($Label28)
$Form2.Controls.Remove($Label29)
$Form2.Controls.Remove($Label30)
$Form2.Controls.Remove($Label31)
$Form2.Controls.Remove($Label32)
$Form2.Controls.Remove($Label33)
$Form2.Controls.Remove($Label34)
$Form2.Controls.Remove($Label35)
$Form2.Controls.Remove($Label36)
$Form2.Controls.Remove($Label37)
$Form2.Controls.Remove($Label38)
$Form2.Controls.Remove($Label39)
$Form2.Controls.Remove($Label40)
$Form2.Controls.Remove($Label41)
$Form2.Controls.Remove($Label42)
$Form2.Controls.Remove($Label43)
$Form2.Controls.Remove($Label44)
$Form2.Controls.Remove($Label45)
$Form2.Controls.Remove($Label46)
$Form2.Controls.Remove($Label47)
$Form2.Controls.Remove($Label48)
$Form2.Controls.Remove($TextBox5)
$Form2.Controls.Remove($TextBox6)
$Form2.Controls.Remove($TextBox7)
$Form2.Controls.Remove($TextBox8)
$Form2.Controls.Remove($TextBox9)
$Form2.Controls.Remove($TextBox10)
$Form2.Controls.Remove($TextBox11)
$Form2.Controls.Remove($TextBox12)
$Form2.Controls.Remove($TextBox13)
$Form2.Controls.Remove($TextBox14)
$Form2.Controls.Remove($TextBox15)
$Form2.Controls.Remove($TextBox16)
$Form2.Controls.Remove($TextBox17)
$Form2.Controls.Remove($TextBox18)
$Form2.Controls.Remove($TextBox19)
$Form2.Controls.Remove($TextBox20)
$Form2.Controls.Remove($TextBox21)
$Form2.Controls.Remove($TextBox22)
$Form2.Controls.Remove($TextBox23)
$Form2.Controls.Remove($TextBox24)
$Form2.Controls.Remove($TextBox25)
$Form2.Controls.Remove($TextBox26)
$Form2.Controls.Remove($TextBox27)
$Form2.Controls.Remove($TextBox28)
$Form2.Controls.Remove($TextBox29)
$Form2.Controls.Remove($TextBox30)
$Form2.Controls.Remove($TextBox31)
$Form2.Controls.Remove($TextBox32)

    }
    else{
        $Form2.Controls.Remove($Label1)
    }



   
    $Label1.text                     = "RUTA 1:"
    $Label1.AutoSize                 = $true
    $Label1.width                    = 25
    $Label1.height                   = 10
    $Label1.location                 = New-Object System.Drawing.Point(24,46)
    $Label1.Font                     = 'Microsoft Sans Serif,10,style=Bold'
    $Label1.ForeColor                = "#000000"
    $Form2.Controls.Add($Label1)
    

    $TextBox1.multiline              = $true
    $TextBox1.width                  = 180
    $TextBox1.height                 = 30
    $TextBox1.location               = New-Object System.Drawing.Point(114,454)
    $TextBox1.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox1)
    
  
    $Label2.text                     = "DIRECCION IP"
    $Label2.AutoSize                 = $true
    $Label2.width                    = 25
    $Label2.height                   = 10
    $Label2.location                 = New-Object System.Drawing.Point(152,441)
    $Label2.Font                     = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label2)
    
    $Label3.text                     = "/"
    $Label3.AutoSize                 = $true
    $Label3.width                    = 25
    $Label3.height                   = 10
    $Label3.location                 = New-Object System.Drawing.Point(297,458)
    $Label3.Font                     = 'Microsoft Sans Serif,14'
    $Form2.Controls.Add($Label3)
    
    $TextBox2.multiline              = $false
    $TextBox2.width                  = 0
    $TextBox2.height                 = 30
    $TextBox2.location               = New-Object System.Drawing.Point(307,455)
    $TextBox2.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox1)
 
    $ComboBox1.text                  = "comboBox"
    $ComboBox1.width                 = 55
    $ComboBox1.height                = 74
    $ComboBox1.location              = New-Object System.Drawing.Point(306,456)
    $ComboBox1.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($ComboBox1)
    
    $Label4.text                     = "Prefijo"
    $Label4.AutoSize                 = $true
    $Label4.width                    = 25
    $Label4.height                   = 10
    $Label4.location                 = New-Object System.Drawing.Point(313,444)
    $Label4.Font                     = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label4)
    
    $TextBox3.multiline              = $true
    $TextBox3.width                  = 180
    $TextBox3.height                 = 30
    $TextBox3.enabled                = $false
    $TextBox3.location               = New-Object System.Drawing.Point(413,452)
    $TextBox3.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox3)
   
    $Label5.text                     = "MASCARA DE RED"
    $Label5.AutoSize                 = $true
    $Label5.width                    = 25
    $Label5.height                   = 10
    $Label5.location                 = New-Object System.Drawing.Point(438,438)
    $Label5.Font                     = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label5)

    $TextBox4.multiline              = $true
    $TextBox4.width                  = 180
    $TextBox4.height                 = 30
    $TextBox4.location               = New-Object System.Drawing.Point(659,450)
    $TextBox4.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox4)
 
    $Label6.text                     = "GATEWAY"
    $Label6.AutoSize                 = $true
    $Label6.width                    = 25
    $Label6.height                   = 10
    $Label6.location                 = New-Object System.Drawing.Point(713,438)
    $Label6.Font                     = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label6)
   
    $Label7.text                     = "RUTA 8:"
    $Label7.AutoSize                 = $true
    $Label7.width                    = 25
    $Label7.height                   = 10
    $Label7.location                 = New-Object System.Drawing.Point(24,449)
    $Label7.Font                     = 'Microsoft Sans Serif,10,style=Bold'
    $Label7.ForeColor                = "#000000"
    $Form2.Controls.Add($Label7)
    
    $TextBox5.multiline              = $true
    $TextBox5.width                  = 180
    $TextBox5.height                 = 30
    $TextBox5.location               = New-Object System.Drawing.Point(114,394)
    $TextBox5.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox5)
  
    $Label8.text                     = "DIRECCION IP"
    $Label8.AutoSize                 = $true
    $Label8.width                    = 25
    $Label8.height                   = 10
    $Label8.location                 = New-Object System.Drawing.Point(152,381)
    $Label8.Font                     = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label8)
   
    $Label9.text                     = "/"
    $Label9.AutoSize                 = $true
    $Label9.width                    = 25
    $Label9.height                   = 10
    $Label9.location                 = New-Object System.Drawing.Point(297,398)
    $Label9.Font                     = 'Microsoft Sans Serif,14'
    $Form2.Controls.Add($Label9)
   
    $TextBox6.multiline              = $false
    $TextBox6.width                  = 0
    $TextBox6.height                 = 30
    $TextBox6.location               = New-Object System.Drawing.Point(307,395)
    $TextBox6.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox6)
  
    $ComboBox2.text                  = "comboBox"
    $ComboBox2.width                 = 55
    $ComboBox2.height                = 74
    $ComboBox2.location              = New-Object System.Drawing.Point(306,396)
    $ComboBox2.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($ComboBox2)
 
    $Label10.text                    = "Prefijo"
    $Label10.AutoSize                = $true
    $Label10.width                   = 25
    $Label10.height                  = 10
    $Label10.location                = New-Object System.Drawing.Point(313,384)
    $Label10.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label0)
  
    $TextBox7.multiline              = $true
    $TextBox7.width                  = 180
    $TextBox7.height                 = 30
    $TextBox7.enabled                = $false
    $TextBox7.location               = New-Object System.Drawing.Point(413,392)
    $TextBox7.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox7)
    
    $Label11.text                    = "MASCARA DE RED"
    $Label11.AutoSize                = $true
    $Label11.width                   = 25
    $Label11.height                  = 10
    $Label11.location                = New-Object System.Drawing.Point(438,378)
    $Label11.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label11)
    
    $TextBox8.multiline              = $true
    $TextBox8.width                  = 180
    $TextBox8.height                 = 30
    $TextBox8.location               = New-Object System.Drawing.Point(659,390)
    $TextBox8.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox8)
   
    $Label12.text                    = "GATEWAY"
    $Label12.AutoSize                = $true
    $Label12.width                   = 25
    $Label12.height                  = 10
    $Label12.location                = New-Object System.Drawing.Point(713,378)
    $Label12.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label12)

    $Label13.text                    = "RUTA 7:"
    $Label13.AutoSize                = $true
    $Label13.width                   = 25
    $Label13.height                  = 10
    $Label13.location                = New-Object System.Drawing.Point(22,390)
    $Label13.Font                    = 'Microsoft Sans Serif,10,style=Bold'
    $Label13.ForeColor               = "#000000"
    $Form2.Controls.Add($Label13)
    
    $TextBox9.multiline              = $true
    $TextBox9.width                  = 180
    $TextBox9.height                 = 30
    $TextBox9.location               = New-Object System.Drawing.Point(113,338)
    $TextBox9.Font                   = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox9)

    $Label14.text                    = "DIRECCION IP"
    $Label14.AutoSize                = $true
    $Label14.width                   = 25
    $Label14.height                  = 10
    $Label14.location                = New-Object System.Drawing.Point(151,325)
    $Label14.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label14)
   
    $Label15.text                    = "/"
    $Label15.AutoSize                = $true
    $Label15.width                   = 25
    $Label15.height                  = 10
    $Label15.location                = New-Object System.Drawing.Point(296,342)
    $Label15.Font                    = 'Microsoft Sans Serif,14'
    $Form2.Controls.Add($Label15)
  
    $TextBox10.multiline             = $false
    $TextBox10.width                 = 0
    $TextBox10.height                = 30
    $TextBox10.location              = New-Object System.Drawing.Point(306,339)
    $TextBox10.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox10)



    
    $ComboBox3.text                  = "comboBox"
    $ComboBox3.width                 = 55
    $ComboBox3.height                = 74
    $ComboBox3.location              = New-Object System.Drawing.Point(305,340)
    $ComboBox3.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($ComboBox3)
   
    $Label16.text                    = "Prefijo"
    $Label16.AutoSize                = $true
    $Label16.width                   = 25
    $Label16.height                  = 10
    $Label16.location                = New-Object System.Drawing.Point(312,328)
    $Label16.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label16)
    
    $TextBox11.multiline             = $true
    $TextBox11.width                 = 180
    $TextBox11.height                = 30
    $TextBox11.enabled               = $false
    $TextBox11.location              = New-Object System.Drawing.Point(412,336)
    $TextBox11.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox11)
    
    $Label17.text                    = "MASCARA DE RED"
    $Label17.AutoSize                = $true
    $Label17.width                   = 25
    $Label17.height                  = 10
    $Label17.location                = New-Object System.Drawing.Point(437,322)
    $Label17.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label17)
   
    $TextBox12.multiline             = $true
    $TextBox12.width                 = 180
    $TextBox12.height                = 30
    $TextBox12.location              = New-Object System.Drawing.Point(658,334)
    $TextBox12.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox12)

    $Label18.text                    = "GATEWAY"
    $Label18.AutoSize                = $true
    $Label18.width                   = 25
    $Label18.height                  = 10
    $Label18.location                = New-Object System.Drawing.Point(712,322)
    $Label18.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label18)
   
    $Label19.text                    = "RUTA 6:"
    $Label19.AutoSize                = $true
    $Label19.width                   = 25
    $Label19.height                  = 10
    $Label19.location                = New-Object System.Drawing.Point(24,339)
    $Label19.Font                    = 'Microsoft Sans Serif,10,style=Bold'
    $Label19.ForeColor               = "#000000"
    $Form2.Controls.Add($Label19)
    
    $TextBox13.multiline             = $true
    $TextBox13.width                 = 180
    $TextBox13.height                = 30
    $TextBox13.location              = New-Object System.Drawing.Point(114,275)
    $TextBox13.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox13)
   
    $Label20.text                    = "DIRECCION IP"
    $Label20.AutoSize                = $true
    $Label20.width                   = 25
    $Label20.height                  = 10
    $Label20.location                = New-Object System.Drawing.Point(152,262)
    $Label20.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label20)
   
    $Label21.text                    = "/"
    $Label21.AutoSize                = $true
    $Label21.width                   = 25
    $Label21.height                  = 10
    $Label21.location                = New-Object System.Drawing.Point(297,279)
    $Label21.Font                    = 'Microsoft Sans Serif,14'
    $Form2.Controls.Add($Label21)
   
    $TextBox14.multiline             = $false
    $TextBox14.width                 = 0
    $TextBox14.height                = 30
    $TextBox14.location              = New-Object System.Drawing.Point(307,276)
    $TextBox14.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox14)
   
    $ComboBox4.text                  = "comboBox"
    $ComboBox4.width                 = 55
    $ComboBox4.height                = 74
    $ComboBox4.location              = New-Object System.Drawing.Point(306,277)
    $ComboBox4.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($ComboBox4)
    
    $Label22.text                    = "Prefijo"
    $Label22.AutoSize                = $true
    $Label22.width                   = 25
    $Label22.height                  = 10
    $Label22.location                = New-Object System.Drawing.Point(313,265)
    $Label22.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label22)
    
    $TextBox15.multiline             = $true
    $TextBox15.width                 = 180
    $TextBox15.height                = 30
    $TextBox15.enabled               = $false
    $TextBox15.location              = New-Object System.Drawing.Point(413,273)
    $TextBox15.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox15)
    
    $Label23.text                    = "MASCARA DE RED"
    $Label23.AutoSize                = $true
    $Label23.width                   = 25
    $Label23.height                  = 10
    $Label23.location                = New-Object System.Drawing.Point(438,259)
    $Label23.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label23)
    
    $TextBox16.multiline             = $true
    $TextBox16.width                 = 180
    $TextBox16.height                = 30
    $TextBox16.location              = New-Object System.Drawing.Point(659,271)
    $TextBox16.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox16)
    
    $Label24.text                    = "GATEWAY"
    $Label24.AutoSize                = $true
    $Label24.width                   = 25
    $Label24.height                  = 10
    $Label24.location                = New-Object System.Drawing.Point(713,259)
    $Label24.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label24)
    
    $Label25.text                    = "RUTA 5:"
    $Label25.AutoSize                = $true
    $Label25.width                   = 25
    $Label25.height                  = 10
    $Label25.location                = New-Object System.Drawing.Point(24,276)
    $Label25.Font                    = 'Microsoft Sans Serif,10,style=Bold'
    $Label25.ForeColor               = "#000000"
    $Form2.Controls.Add($Label25)
   
    $TextBox17.multiline             = $true
    $TextBox17.width                 = 180
    $TextBox17.height                = 30
    $TextBox17.location              = New-Object System.Drawing.Point(114,214)
    $TextBox17.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox17)
    
    $Label26.text                    = "DIRECCION IP"
    $Label26.AutoSize                = $true
    $Label26.width                   = 25
    $Label26.height                  = 10
    $Label26.location                = New-Object System.Drawing.Point(152,201)
    $Label26.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label26)
   
    $Label27.text                    = "/"
    $Label27.AutoSize                = $true
    $Label27.width                   = 25
    $Label27.height                  = 10
    $Label27.location                = New-Object System.Drawing.Point(297,218)
    $Label27.Font                    = 'Microsoft Sans Serif,14'
    $Form2.Controls.Add($Label27)
   
    $TextBox18.multiline             = $false
    $TextBox18.width                 = 0
    $TextBox18.height                = 30
    $TextBox18.location              = New-Object System.Drawing.Point(307,215)
    $TextBox18.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox18)
    
    $ComboBox5.text                  = "comboBox"
    $ComboBox5.width                 = 55
    $ComboBox5.height                = 74
    $ComboBox5.location              = New-Object System.Drawing.Point(306,216)
    $ComboBox5.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($ComboBox5)
    
    $Label28.text                    = "Prefijo"
    $Label28.AutoSize                = $true
    $Label28.width                   = 25
    $Label28.height                  = 10
    $Label28.location                = New-Object System.Drawing.Point(313,204)
    $Label28.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label28)
   
    $TextBox19.multiline             = $true
    $TextBox19.width                 = 180
    $TextBox19.height                = 30
    $TextBox19.enabled               = $false
    $TextBox19.location              = New-Object System.Drawing.Point(413,212)
    $TextBox19.Font                  = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($TextBox19)
  
    $Label29.text                    = "MASCARA DE RED"
    $Label29.AutoSize                = $true
    $Label29.width                   = 25
    $Label29.height                  = 10
    $Label29.location                = New-Object System.Drawing.Point(438,198)
    $Label29.Font                    = 'Microsoft Sans Serif,10'
    $Form2.Controls.Add($Label29)
   
    $TextBox20.multiline             = $true
    $TextBox20.width                 = 180
    $TextBox20.height                = 30
    $TextBox20.location              = New-Object System.Drawing.Point(659,210)
    $TextBox20.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label30.text                    = "GATEWAY"
    $Label30.AutoSize                = $true
    $Label30.width                   = 25
    $Label30.height                  = 10
    $Label30.location                = New-Object System.Drawing.Point(713,198)
    $Label30.Font                    = 'Microsoft Sans Serif,10'
    
    
    $Label31.text                    = "RUTA 4:"
    $Label31.AutoSize                = $true
    $Label31.width                   = 25
    $Label31.height                  = 10
    $Label31.location                = New-Object System.Drawing.Point(24,215)
    $Label31.Font                    = 'Microsoft Sans Serif,10,style=Bold'
    $Label31.ForeColor               = "#000000"
    
    
    $TextBox21.multiline             = $true
    $TextBox21.width                 = 180
    $TextBox21.height                = 30
    $TextBox21.location              = New-Object System.Drawing.Point(113,154)
    $TextBox21.Font                  = 'Microsoft Sans Serif,10'
    
   
    $Label32.text                    = "DIRECCION IP"
    $Label32.AutoSize                = $true
    $Label32.width                   = 25
    $Label32.height                  = 10
    $Label32.location                = New-Object System.Drawing.Point(151,141)
    $Label32.Font                    = 'Microsoft Sans Serif,10'
    
    
    $Label33.text                    = "/"
    $Label33.AutoSize                = $true
    $Label33.width                   = 25
    $Label33.height                  = 10
    $Label33.location                = New-Object System.Drawing.Point(296,158)
    $Label33.Font                    = 'Microsoft Sans Serif,14'
    
   
    $TextBox22.multiline             = $false
    $TextBox22.width                 = 0
    $TextBox22.height                = 30
    $TextBox22.location              = New-Object System.Drawing.Point(306,155)
    $TextBox22.Font                  = 'Microsoft Sans Serif,10'
    
    
    $ComboBox6.text                  = "comboBox"
    $ComboBox6.width                 = 55
    $ComboBox6.height                = 74
    $ComboBox6.location              = New-Object System.Drawing.Point(305,156)
    $ComboBox6.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label34.text                    = "Prefijo"
    $Label34.AutoSize                = $true
    $Label34.width                   = 25
    $Label34.height                  = 10
    $Label34.location                = New-Object System.Drawing.Point(312,144)
    $Label34.Font                    = 'Microsoft Sans Serif,10'
    
    
    $TextBox23.multiline             = $true
    $TextBox23.width                 = 180
    $TextBox23.height                = 30
    $TextBox23.enabled               = $false
    $TextBox23.location              = New-Object System.Drawing.Point(412,152)
    $TextBox23.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label35.text                    = "MASCARA DE RED"
    $Label35.AutoSize                = $true
    $Label35.width                   = 25
    $Label35.height                  = 10
    $Label35.location                = New-Object System.Drawing.Point(437,138)
    $Label35.Font                    = 'Microsoft Sans Serif,10'
    
    
    $TextBox24.multiline             = $true
    $TextBox24.width                 = 180
    $TextBox24.height                = 30
    $TextBox24.location              = New-Object System.Drawing.Point(658,150)
    $TextBox24.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label36.text                    = "GATEWAY"
    $Label36.AutoSize                = $true
    $Label36.width                   = 25
    $Label36.height                  = 10
    $Label36.location                = New-Object System.Drawing.Point(712,138)
    $Label36.Font                    = 'Microsoft Sans Serif,10'
    
    
    $Label37.text                    = "RUTA 3:"
    $Label37.AutoSize                = $true
    $Label37.width                   = 25
    $Label37.height                  = 10
    $Label37.location                = New-Object System.Drawing.Point(24,156)
    $Label37.Font                    = 'Microsoft Sans Serif,10,style=Bold'
    $Label37.ForeColor               = "#000000"
    
    
    $TextBox25.multiline             = $true
    $TextBox25.width                 = 180
    $TextBox25.height                = 30
    $TextBox25.location              = New-Object System.Drawing.Point(113,98)
    $TextBox25.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label38.text                    = "DIRECCION IP"
    $Label38.AutoSize                = $true
    $Label38.width                   = 25
    $Label38.height                  = 10
    $Label38.location                = New-Object System.Drawing.Point(151,85)
    $Label38.Font                    = 'Microsoft Sans Serif,10'
    
    
    $Label39.text                    = "/"
    $Label39.AutoSize                = $true
    $Label39.width                   = 25
    $Label39.height                  = 10
    $Label39.location                = New-Object System.Drawing.Point(296,102)
    $Label39.Font                    = 'Microsoft Sans Serif,14'
    
    
    $TextBox26.multiline             = $false
    $TextBox26.width                 = 0
    $TextBox26.height                = 30
    $TextBox26.location              = New-Object System.Drawing.Point(306,99)
    $TextBox26.Font                  = 'Microsoft Sans Serif,10'
    
    
    $ComboBox7.text                  = "comboBox"
    $ComboBox7.width                 = 55
    $ComboBox7.height                = 74
    $ComboBox7.location              = New-Object System.Drawing.Point(305,100)
    $ComboBox7.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label40.text                    = "Prefijo"
    $Label40.AutoSize                = $true
    $Label40.width                   = 25
    $Label40.height                  = 10
    $Label40.location                = New-Object System.Drawing.Point(312,88)
    $Label40.Font                    = 'Microsoft Sans Serif,10'
    
    
    $TextBox27.multiline             = $true
    $TextBox27.width                 = 180
    $TextBox27.height                = 30
    $TextBox27.enabled               = $false
    $TextBox27.location              = New-Object System.Drawing.Point(412,96)
    $TextBox27.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label41.text                    = "MASCARA DE RED"
    $Label41.AutoSize                = $true
    $Label41.width                   = 25
    $Label41.height                  = 10
    $Label41.location                = New-Object System.Drawing.Point(437,82)
    $Label41.Font                    = 'Microsoft Sans Serif,10'
    
    
    $TextBox28.multiline             = $true
    $TextBox28.width                 = 180
    $TextBox28.height                = 30
    $TextBox28.location              = New-Object System.Drawing.Point(658,94)
    $TextBox28.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label42.text                    = "GATEWAY"
    $Label42.AutoSize                = $true
    $Label42.width                   = 25
    $Label42.height                  = 10
    $Label42.location                = New-Object System.Drawing.Point(712,82)
    $Label42.Font                    = 'Microsoft Sans Serif,10'
    
    
    $Label43.text                    = "RUTA 2:"
    $Label43.AutoSize                = $true
    $Label43.width                   = 25
    $Label43.height                  = 10
    $Label43.location                = New-Object System.Drawing.Point(24,101)
    $Label43.Font                    = 'Microsoft Sans Serif,10,style=Bold'
    $Label43.ForeColor               = "#000000"
    
   
    $TextBox29.multiline             = $true
    $TextBox29.width                 = 180
    $TextBox29.height                = 30
    $TextBox29.location              = New-Object System.Drawing.Point(114,35)
    $TextBox29.Font                  = 'Microsoft Sans Serif,10'
    
   
    $Label44.text                    = "DIRECCION IP"
    $Label44.AutoSize                = $true
    $Label44.width                   = 25
    $Label44.height                  = 10
    $Label44.location                = New-Object System.Drawing.Point(152,22)
    $Label44.Font                    = 'Microsoft Sans Serif,10'
    
    
    $Label45.text                    = "/"
    $Label45.AutoSize                = $true
    $Label45.width                   = 25
    $Label45.height                  = 10
    $Label45.location                = New-Object System.Drawing.Point(297,39)
    $Label45.Font                    = 'Microsoft Sans Serif,14'
    
    
    $TextBox30.multiline             = $false
    $TextBox30.width                 = 0
    $TextBox30.height                = 30
    $TextBox30.location              = New-Object System.Drawing.Point(307,36)
    $TextBox30.Font                  = 'Microsoft Sans Serif,10'
    
   
    $ComboBox8.text                  = "comboBox"
    $ComboBox8.width                 = 55
    $ComboBox8.height                = 74
    $ComboBox8.location              = New-Object System.Drawing.Point(306,37)
    $ComboBox8.Font                  = 'Microsoft Sans Serif,10'
    
   
    $Label46.text                    = "Prefijo"
    $Label46.AutoSize                = $true
    $Label46.width                   = 25
    $Label46.height                  = 10
    $Label46.location                = New-Object System.Drawing.Point(313,25)
    $Label46.Font                    = 'Microsoft Sans Serif,10'
    
    
    $TextBox31.multiline             = $true
    $TextBox31.width                 = 180
    $TextBox31.height                = 30
    $TextBox31.enabled               = $false
    $TextBox31.location              = New-Object System.Drawing.Point(413,33)
    $TextBox31.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label47.text                    = "MASCARA DE RED"
    $Label47.AutoSize                = $true
    $Label47.width                   = 25
    $Label47.height                  = 10
    $Label47.location                = New-Object System.Drawing.Point(438,19)
    $Label47.Font                    = 'Microsoft Sans Serif,10'
    
    
    $TextBox32.multiline             = $true
    $TextBox32.width                 = 180
    $TextBox32.height                = 30
    $TextBox32.location              = New-Object System.Drawing.Point(659,31)
    $TextBox32.Font                  = 'Microsoft Sans Serif,10'
    
    
    $Label48.text                    = "GATEWAY"
    $Label48.AutoSize                = $true
    $Label48.width                   = 25
    $Label48.height                  = 10
    $Label48.location                = New-Object System.Drawing.Point(713,19)
    $Label48.Font                    = 'Microsoft Sans Serif,10'
    
    
    $Button1.BackColor               = "#acc9f8"
    $Button1.text                    = "ACEPTAR"
    $Button1.width                   = 150
    $Button1.height                  = 40
    $Button1.location                = New-Object System.Drawing.Point(747,593)
    $Button1.Font                    = 'Microsoft Sans Serif,10'
    
   









    $Form2.Add_Shown({$Form.Activate()})
    [void] $Form2.ShowDialog();















}








#Creación de un nuevo formulario
function rutasPredeterminadas{
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")  
    ############### CREACION DEL ELEMENTO ############
    $Form1 = New-Object System.Windows.Forms.Form 
    
   
    $Button10 = New-Object 'System.Windows.Forms.Button'
    $textbox19 = New-Object 'System.Windows.Forms.TextBox'
    $textbox20 = New-Object 'System.Windows.Forms.TextBox'
    $Button11 = New-Object 'System.Windows.Forms.Button'
    $label11  = New-Object 'system.Windows.Forms.Label'
    $label12 = New-Object 'system.Windows.Forms.Label'
    $label13= New-Object 'system.Windows.Forms.Label'
    $label14= New-Object 'system.Windows.Forms.Label'
    $label15= New-Object 'system.Windows.Forms.Label'

#Etiqueta de Ruta de Ubicación


$label11.text                      = "Servidor Proxy"
$label11.AutoSize                  = $true
$label11.width                     = 40
$label11.height                    = 30
$label11.location                  = New-Object System.Drawing.Point(55,25)
$label11.Font                      = 'Comic Sans MS,10'
$Form1.Controls.Add($label11) 


$label12.text                      = "Excepción 1:"
$label12.AutoSize                  = $true
$label12.width                     = 40
$label12.height                    = 30
$label12.location                  = New-Object System.Drawing.Point(55,80)
$label12.Font                      = 'Comic Sans MS,10'
$Form1.Controls.Add($label12) 


$label13.text                      = "Excepción 2:"
$label13.AutoSize                  = $true
$label13.width                     = 40
$label13.height                    = 30
$label13.location                  = New-Object System.Drawing.Point(55,130)
$label13.Font                      = 'Comic Sans MS,10'
$Form1.Controls.Add($label13) 

$label14.text                      = "Excepción 3:"
$label14.AutoSize                  = $true
$label14.width                     = 40
$label14.height                    = 30
$label14.location                  = New-Object System.Drawing.Point(55,180)
$label14.Font                      = 'Comic Sans MS,10'
$Form1.Controls.Add($label14) 

$label15.text                      = "Excepción 4:"
$label15.AutoSize                  = $true
$label15.width                     = 40
$label15.height                    = 30
$label15.location                  = New-Object System.Drawing.Point(55,230)
$label15.Font                      = 'Comic Sans MS,10'
$Form1.Controls.Add($label15) 


    ############TextBox Ruta de Ubicación
	$textbox11.Font = 'Comic Sans MS,10'
	$textbox11.Location = '200,25'
	$textbox11.Margin = '5, 5, 5, 5'
	$textbox11.Multiline = $True
	$textbox11.Name = 'textbox5'
	$textbox11.Size = '300, 30'
    $textbox11.TabIndex = 1
    $textbox11.Enabled=$false
	$textbox11.add_TextChanged($textbox1_TextChanged)


    $Form1.Controls.Add($textbox11)
    $peru = $textbox1.Text
    $arreglo = $peru.Split(".");

if($arreglo[2] -eq '60'){
        $array = $arreglo[0] + "." + $arreglo[1] + "." + $arreglo[2] + "." + "102"+":3128"
        $textbox11.Text = $array
}
else{
        $array = $arreglo[0] + "." + $arreglo[1] + "." + $arreglo[2] + "." + "7"+":3128"
        $textbox11.Text = $array
}


    $Form1.Size = New-Object System.Drawing.Size(1100,750)  
    $Form1.StartPosition = "CenterScreen" 
    $Form1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Sizable
    $Form1.MaximizeBox = $false
    $Form1.Text = "CONVERTIDOR DE AUDIO" 
    

    $textbox12.Font = 'Comic Sans MS,10'
    $textbox12.Location = '200,80'
    $textbox12.Margin = '5, 5, 5, 5'
    $textbox12.Multiline = $True
    $textbox12.Name = 'textbox5'
    $textbox12.Size = '300, 30'
    $textbox12.TabIndex = 1
    $textbox12.Enabled = $false
    $textbox12.add_TextChanged($textbox1_TextChanged)
    $Form1.Controls.Add($textbox12)


    $textbox13.Font = 'Comic Sans MS,10'
    $textbox13.Location = '200,130'
    $textbox13.Margin = '5, 5, 5, 5'
    $textbox13.Multiline = $True
    $textbox13.Name = 'textbox5'
    $textbox13.Size = '300, 30'
    $textbox13.TabIndex = 1
    $textbox13.Enabled = $false
    $textbox13.add_TextChanged($textbox1_TextChanged)
    $Form1.Controls.Add($textbox13)

    $textbox14.Font = 'Comic Sans MS,10'
    $textbox14.Location = '200,180'
    $textbox14.Margin = '5, 5, 5, 5'
    $textbox14.Multiline = $True
    $textbox14.Name = 'textbox5'
    $textbox14.Size = '300, 30'
    $textbox14.TabIndex = 1
    $textbox14.Enabled = $false
    $textbox14.add_TextChanged($textbox1_TextChanged)
    $Form1.Controls.Add($textbox14)

    $textbox15.Font = 'Comic Sans MS,10'
    $textbox15.Location = '200,230'
    $textbox15.Margin = '5, 5, 5, 5'
    $textbox15.Multiline = $True
    $textbox15.Name = 'textbox5'
    $textbox15.Size = '300, 30'
    $textbox15.TabIndex = 1
    $textbox15.Enabled = $false
    $textbox15.add_TextChanged($textbox1_TextChanged)
    $Form1.Controls.Add($textbox15)


    $textbox12.Text = "192.9.100.*"
    $textbox13.Text = "10.10.10.*"
    $array = $arreglo[0] + "." + $arreglo[1] + "." + $arreglo[2] + "." + "*"
    $textbox14.Text = $array
    $textbox15.Text = "<local>"

  
      $Form1.Controls.Add($Button10)
    $Button10.Location = New-Object System.Drawing.Size(520,600) 
    $Button10.Size = New-Object System.Drawing.Size(150, 50) 
    $Button10.Text = "RUTAS PREDETERMINADAS" 
    $Button10.UseVisualStyleBackColor = $True
    $Button10.BackColor = [System.Drawing.Color]::LightBlue
    $Button10.Add_Click( { 
            $textbox11.Enabled = $true
            $textbox12.Enabled = $true
            $textbox13.Enabled = $true
            $textbox14.Enabled = $true
            $textbox15.Enabled = $true
        if ($arreglo[2] -eq '64') {
           
            $textbox16.Enabled = $true
            $textbox17.Enabled = $true
             $textbox18.Enabled=$true}
    
     }) 
      
   
     $textbox19.Font = 'Comic Sans MS,10'
     $textbox19.Location = '600,50'
     $textbox19.Margin = '5, 5, 5, 5'
     $textbox19.Multiline = $True
     $textbox19.Name = 'textbox5'
     $textbox19.Size = '300, 30'
     $textbox19.TabIndex = 1
     $textbox19.Enabled = $false
     $textbox19.add_TextChanged($textbox1_TextChanged)
   $Form1.Controls.Add($textbox19)

   $textbox20.Font = 'Comic Sans MS,10'
   $textbox20.Location = '600,150'
   $textbox20.Margin = '5, 5, 5, 5'
   $textbox20.Multiline = $True
   $textbox20.Name = 'textbox5'
   $textbox20.Size = '300, 30'
   $textbox20.TabIndex = 1
   $textbox20.Enabled = $false
   $textbox20.add_TextChanged($textbox1_TextChanged)
 $Form1.Controls.Add($textbox20)
 


 $movistarChile="192.9.64.0/25"
 $financieroChileJuanJo="192.9.62.128/26"
 $financieroChilePatricia="192.9.62.192/26"
 $Oncosalud="192.9.64.128/26"
 $cajaArequipa="192.9.64.0/26"
 $carteraPropia="192.9.65.128/25"
 $mesaDigital="192.9.61.100/32"
 $bbva="192.9.64.192/26"

[int]$arregloModificado=$arreglo[3]
#Mascara25
$movistarMask=($arregloModificado -ge 0 -and $arregloModificado -le 127)
$carteraMask=($arregloModificado -ge 128 -and $arregloModificado -le 255)
#Mascara26
$financieroMaskJuanJo=($arregloModificado -ge 128 -and $arregloModificado -le 191)
$financieroMaskPatricia=($arregloModificado -ge 192 -and $arregloModificado -le 255)
$OncosaludMask=($arregloModificado -ge 128 -and $arregloModificado -le 191)
$cajaArequipaMask=($arregloModificado -ge 0 -and $arregloModificado -le 63)
$bbvaMask=($arregloModificado -ge 192 -and $arregloModificado -le 255)
#




if($arreglo[2] -eq '64'){

    if( $movistarMask){

        $label16                           = New-Object system.Windows.Forms.Label
        $label17                           = New-Object system.Windows.Forms.Label
        $label16.text                      = "Excepción 5:"
        $label16.AutoSize                  = $true
        $label16.width                     = 40
        $label16.height                    = 30
        $label16.location                  = New-Object System.Drawing.Point(55,270)
        $label16.Font                      = 'Comic Sans MS,10'
        $Form1.Controls.Add($label16) 

       
$label17.text                      = "Excepción 6:"
$label17.AutoSize                  = $true
$label17.width                     = 40
$label17.height                    = 30
$label17.location                  = New-Object System.Drawing.Point(55,310)
$label17.Font                      = 'Comic Sans MS,10'
$Form1.Controls.Add($label17) 

$label18                           = New-Object system.Windows.Forms.Label
$label18.text                      = "Excepción 7:"
$label18.AutoSize                  = $true
$label18.width                     = 40
$label18.height                    = 30
$label18.location                  = New-Object System.Drawing.Point(55,350)
$label18.Font                      = 'Comic Sans MS,10'
$Form1.Controls.Add($label18) 







        $textbox16 = New-Object 'System.Windows.Forms.TextBox'
        $textbox16.Font = 'Comic Sans MS,10'
         $textbox16.Location = '200,270'
         $textbox16.Margin = '5, 5, 5, 5'
         $textbox16.Multiline = $True
        $textbox16.Name = 'textbox5'
      $textbox16.Size = '300, 30'
        $textbox16.TabIndex = 1
        $textbox16.Enabled = $false
      $textbox16.add_TextChanged($textbox1_TextChanged)
      $Form1.Controls.Add($textbox16)


      $textbox17 = New-Object 'System.Windows.Forms.TextBox'
      $textbox17.Font = 'Comic Sans MS,10'
      $textbox17.Location = '200,310'
      $textbox17.Margin = '5, 5, 5, 5'
      $textbox17.Multiline = $True
      $textbox17.Name = 'textbox5'
      $textbox17.Size = '300, 30'
      $textbox17.TabIndex = 1
      $textbox17.Enabled = $false
      $textbox17.add_TextChanged($textbox1_TextChanged)
      $Form1.Controls.Add($textbox17)

      $textbox18 = New-Object 'System.Windows.Forms.TextBox'
        $textbox18.Font = 'Comic Sans MS,10'
        $textbox18.Location = '200,350'
        $textbox18.Margin = '5, 5, 5, 5'
        $textbox18.Multiline = $True
        $textbox18.Name = 'textbox5'
        $textbox18.Size = '300, 30'
        $textbox18.TabIndex = 1
        $textbox18.Enabled = $false
        $textbox18.add_TextChanged($textbox1_TextChanged)
      $Form1.Controls.Add($textbox18)

      $textbox16.Text = "192.9.104.*"
      $textbox17.Text = "192.9.106.*"
      $textbox18.Text = "*.telefonicachile.cl"
        $textbox19.Text=$movistarChile
        $textbox20.Text="Movistar Chile"
    }
    else{
        if($OncosaludMask){
            $Form1.Controls.Remove($textbox16)
            $Form1.Controls.Remove($textbox17)
            $Form1.Controls.Remove($textbox18)
            $Form1.Controls.Remove($label16 )
            $Form1.Controls.Remove($label17 )
            $Form1.Controls.Remove($label18 )
            $textbox19.Text=$Oncosalud
            $textbox20.Text="Oncosalud Cobranzas"
        }
        else{
            if($bbvaMask){
                $Form1.Controls.Remove($textbox16)
                $Form1.Controls.Remove($textbox17)
                $Form1.Controls.Remove($textbox18)
                $Form1.Controls.Remove($label16 )
                $Form1.Controls.Remove($label17 )
                $Form1.Controls.Remove($label18 )
                $textbox19.Text=$bbva
                $textbox20.Text="BBVA"
            }
            else{
                $Form1.Controls.Remove($textbox16)
                $Form1.Controls.Remove($textbox17)
                $Form1.Controls.Remove($textbox18)
                $Form1.Controls.Remove($label16 )
                $Form1.Controls.Remove($label17 )
                $Form1.Controls.Remove($label18 )
                $textbox19.Text="Error"
                $textbox20.Text="Error"
            }
        }
    }
}


if($arreglo[2] -eq '62'){
    if($financieroMaskJuanJo){
        $textbox19.Text=$financieroChileJuanJo
        $textbox20.Text="Financiero Chile-Juan José"
    }
    else{
        if($financieroMaskPatricia){
            $textbox19.Text=$financieroChilePatricia
            $textbox20.Text="Financiero Chile-Patricia"
        }
        else{
            if($cajaArequipaMask){
                $textbox19.Text=$cajaArequipa
                $textbox20.Text="Caja Arequipa"
            }
            else{
                $textbox19.Text="Error"
                $textbox20.Text="Error"
            }
        }
    }
}
if($arreglo[2] -eq '65'){
    if($carteraMask){
        $textbox19.Text=$carteraPropia
        $textbox20.Text="Cartera Propia"
    }
    else{
        $textbox19.Text="Error"
        $textbox20.Text="Error"
    }
}


$Button11.Location = New-Object System.Drawing.Size(720,600) 
$Button11.Size = New-Object System.Drawing.Size(150, 50) 
$Button11.Text = "ACEPTAR" 
$Button11.UseVisualStyleBackColor = $True
$Button11.BackColor = [System.Drawing.Color]::LightBlue
$Button11.DialogResult = [System.Windows.Forms.DialogResult]::OK
$Form1.AcceptButton = $Button11
$Form1.Controls.Add($Button11)




    $Form1.Add_Shown({$Form.Activate()})
    [void] $Form1.ShowDialog();


}
function deshabilitarRutas{

	$Username = "Administrador"
    $Password = "R3c542016C4ll"

    $Computer=$textbox1.Text; 
    
    
        
   
    $deshabilitarProxy={
          Param($Computer)    

            Remove-ItemProperty -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Control Panel" -Name Proxy;
            Remove-Item -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer" -Name "Control Panel";
            Remove-Item -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft" -Name "Internet Explorer";
            Remove-ItemProperty -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxySettingsPerUser;
        
        #Deshabilitar el proxy
     
            #Deshabilitando Proxy
            Remove-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyServer;
            Remove-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyEnable;
            Remove-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyOverride;
            #Lanzamos ie para que actualize la config proxy
            #& `"C:\Archivos de programa\Internet Explorer\iexplore.exe`"
            Remove-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyEnable;
            Remove-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyServer;
            Remove-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyOverride;
     
     #Lanzamos ie para que actualize la config proxy
     #& `"C:\Archivos de programa\Internet Explorer\iexplore.exe`"
    
    

    }  
    $SecurePassword = ConvertTo-SecureString -AsPlainText $Password -Force
    $Cred = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $Username, $SecurePassword
        $Session = New-PSSession -ComputerName $Computer -Credential $Cred
     
        
         #Invocando comandos
         $Job = Invoke-Command -Session $Session  -ScriptBlock  $deshabilitarProxy -ArgumentList ($Computer) -AsJob 
         $Null = Wait-Job -Job $Job
        Remove-PSSession -Session $Session
    

}


function Validacion{
    $regip = [regex]"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
                $validacion = $textbox1.Text -match $regip
                    if ($validacion -eq $False) {
        Add-Type -AssemblyName System.Windows.Forms
        $errorMsg = "IP INCORRECTA"
        $caption = "Error de contenido"
        [System.Windows.Forms.MessageBox]::Show($errorMsg, $caption)
   
                }else {
        Add-Type -AssemblyName System.Windows.Forms
        $errorMsg = "IP CORRECTA"
        $caption = "Error de contenido"
        [System.Windows.Forms.MessageBox]::Show($errorMsg, $caption)
                }
}


function ejecutarTareas{

	$Username = "Administrador"
    $Password = "R3c542016C4ll"

    $Computer=$textbox1.Text; 
    $serverProxy=$textbox11.Text;
    $excepcion1=$textbox12.Text;
    $excepcion2=$textbox13.Text;
    $excepcion3=$textbox14.Text;
    $excepcion4=$textbox15.Text;
    $excepcion5=$textbox16.Text;
    $excepcion6=$textbox17.Text;
    $excepcion7=$textbox18.Text;
    
    
        
   
      $habilitarProxy={
          Param($Computer,$serverProxy,$excepcion1,$excepcion2,$excepcion3,$excepcion4,$excepcion5,$excepcion6,$excepcion7)    

       

        $arregloNuevo=$Computer.Split(".");
        $arregloFinal=$arregloNuevo[2]
        [int]$arregloModificado1=$arregloNuevo[3]
        #Mascara25
        $movistarMask1=($arregloModificado1 -ge 0 -and $arregloModificado1 -le 127)



          
      #ENABLE SEC    
     #Agregamos claves faltantes para editar el proxy
     New-Item -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft" -Name "Internet Explorer";
     New-Item -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer" -Name "Control Panel";
     #Bloqueamos la edición del proxy (No estamos bloqueando pq se borra la config)
     Remove-ItemProperty -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Control Panel" -Name Proxy;
     New-ItemProperty -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Control Panel" -Name Proxy -PropertyType DWord -Value 1;
     #Forzamos la configuración por pc y no por usuario
     New-ItemProperty -Path "Registry::HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxySettingsPerUser -PropertyType DWord -Value 0;
    

     #ENABLE PROXY
     Remove-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyEnable;
     #Configurando valores predeterminados del proxy para PC
     New-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyServer -Value "$serverProxy";
     New-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyEnable -PropertyType DWord -Value 1;
if($arregloFinal -eq '64' ){
    if($movistarMask1){
        New-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyOverride -Value "$excepcion1;$excepcion2;$excepcion3;$excepcion5;$excepcion6;$excepcion7;$excepcion4";
    }
    else{
        New-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyOverride -Value "$excepcion1;$excepcion2;$excepcion3;$excepcion4"; 
    }
}
else{
    New-ItemProperty -Path "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyOverride -Value "$excepcion1;$excepcion2;$excepcion3;$excepcion4"; 
}
   
     
     Remove-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyEnable;
     New-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyServer -Value "$serverProxy";
     New-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyEnable -PropertyType DWord -Value 1;
     if($arregloFinal -eq '64' ){
        if($movistarMask1){
            New-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings"-Name ProxyOverride -Value "$excepcion1;$excepcion2;$excepcion3;$excepcion5;$excepcion6;$excepcion7;$excepcion4";
        }
        else{
            New-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyOverride -Value "$excepcion1;$excepcion2;$excepcion3;$excepcion4"; 
        }
    }
    else{
         New-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name ProxyOverride -Value "$excepcion1;$excepcion2;$excepcion3;$excepcion4"; 
    }


  
     #Lanzamos ie para que actualize la config proxy
     #& `"C:\Archivos de programa\Internet Explorer\iexplore.exe`"
    
    

    }  
    $SecurePassword = ConvertTo-SecureString -AsPlainText $Password -Force
    $Cred = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $Username, $SecurePassword
        $Session = New-PSSession -ComputerName $Computer -Credential $Cred
     
        
         #Invocando comandos
         $Job = Invoke-Command -Session $Session  -ScriptBlock $habilitarProxy -ArgumentList ($Computer,$serverProxy,$excepcion1,$excepcion2,$excepcion3,$excepcion4,$excepcion5,$excepcion6,$excepcion7) -AsJob 
         $Null = Wait-Job -Job $Job
        Remove-PSSession -Session $Session
     
}

###############################

$computerNames = @('IP','RANGO DE IPS','ARCHIVO TXT')
$comboBox1 = New-Object System.Windows.Forms.ComboBox
$comboBox1.Font = 'Segoe UI, 12pt'
$comboBox1.Location = New-Object System.Drawing.Point(35,50)
$comboBox1.Size = New-Object System.Drawing.Size(200, 40)

 
foreach($computer in $computerNames)
{
  $comboBox1.Items.add($computer)

}
$comboBox1.add_SelectedIndexChanged({

    if($comboBox1.SelectedItem -eq 'IP'){
        $dataGridView.Rows.Clear()
        $dataGridView.DataSource = $null
        $Form.Controls.Remove($dataGridView)
        $Form.Controls.Remove($textbox2)
        $Form.Controls.Remove($textbox3)
        $Form.Controls.Remove($Button)
        $Form.Controls.Add($textbox1)
              $Form.Controls.Add($Button2)	
              $Form.Controls.Add($Button3)
       
        $Form.Controls.Add($Groupbox1)
        $Form.Controls.Add($Groupbox2)
        $Groupbox1.Controls.Add($comboBox2)
        $Groupbox2.Controls.Add($comboBox4)
        $Form.Controls.Remove($label2)
        $Form.Controls.Remove($label3)
        $textbox1.Font = 'Comic Sans MS,10'
        $textbox1.Location = '300,50'
        $textbox1.Margin = '5, 5, 5, 5'
        $textbox1.Multiline = $True
        $textbox1.Name = 'textbox5'
        $textbox1.Size = '200, 30'
        $textbox1.TabIndex = 1
        $textbox1.add_TextChanged($textbox1_TextChanged)

###################################

            $Button2.Location = New-Object System.Drawing.Size(520, 600) 
            $Button2.Size = New-Object System.Drawing.Size(150, 50) 
            $Button2.Text = "RUTAS PREDETERMINADAS" 
            $Button2.UseVisualStyleBackColor = $True
            $Button2.BackColor = [System.Drawing.Color]::LightBlue
            $Button2.Add_Click( { Validacion }) 
      

            $Button3.Location = New-Object System.Drawing.Size(640, 600) 
            $Button3.Size = New-Object System.Drawing.Size(150, 50) 
            $Button3.Text = "EJECUTAR" 
            $Button3.UseVisualStyleBackColor = $True
            $Button3.BackColor = [System.Drawing.Color]::LightBlue
            $Button3.Add_Click( { ejecutarTareas }) 

#######################################
$Groupbox1.height                = 140
$Groupbox1.width                 = 1000
$Groupbox1.text                  = "Proxy"
$Groupbox1.location              = New-Object System.Drawing.Point(20,110)

######################################
#######################################
$Groupbox2.height                = 140
$Groupbox2.width                 = 1000
$Groupbox2.text                  = "Rutas"
$Groupbox2.location              = New-Object System.Drawing.Point(20,280)

######################################

$datos2=@('AGREGAR RUTA','BLOQUEAR RUTA','ELIMINAR RUTA')
$comboBox4.Font = 'Segoe UI, 12pt'
$comboBox4.Location = New-Object System.Drawing.Point(20,40)
$comboBox4.Size = New-Object System.Drawing.Size(200, 40)
foreach($computer2 in $datos2)
{
  $comboBox4.Items.add($computer2)

}
$comboBox4.add_SelectedIndexChanged({
    if($comboBox4.SelectedItem -eq 'AGREGAR RUTA'){
        $Groupbox2.Controls.Add($comboBox5)
        $datos3 = @('1','2','3','4','5','6','7','8')
        $comboBox5.Font = 'Segoe UI, 12pt'
        $comboBox5.Location = New-Object System.Drawing.Point(300,40)
        $comboBox5.Size = New-Object System.Drawing.Size(200, 40)
        foreach($computer3 in $datos3)
{
  $comboBox5.Items.add($computer3)
}
$comboBox5.add_SelectedIndexChanged({
    ##########################################
    $Button5.Location = New-Object System.Drawing.Size(520,40) 
    $Button5.Size = New-Object System.Drawing.Size(150,50) 
    $Button5.Text = "ROUTES" 
    $Button5.UseVisualStyleBackColor = $True
    $Button5.BackColor = [System.Drawing.Color]::LightBlue
    $Button5.Add_Click({routesForm}) 
    $Groupbox2.Controls.Add($Button5)	

})
    }
    else{
        if($comboBox2.SelectedItem -eq 'BLOQUEAR RUTA'){

        }
    }
})





$datos = @('HABILITAR PROXY', 'DESHABILITAR PROXY')
$comboBox2.Font = 'Segoe UI, 12pt'
$comboBox2.Location = New-Object System.Drawing.Point(20,40)
$comboBox2.Size = New-Object System.Drawing.Size(200, 40)

foreach($computer1 in $datos)
{
  $comboBox2.Items.add($computer1)

}
$comboBox2.add_SelectedIndexChanged({
    if($comboBox2.SelectedItem -eq 'HABILITAR PROXY'){
        $Groupbox1.Controls.Add($comboBox3)
        $Groupbox1.Controls.Remove($Button4)
        $datos1 = @('Predeterminado', 'Personalizado')
        $comboBox3.Font = 'Segoe UI, 12pt'
        $comboBox3.Location = New-Object System.Drawing.Point(300,40)
        $comboBox3.Size = New-Object System.Drawing.Size(200, 40)
        foreach($computer2 in $datos1)
{
  $comboBox3.Items.add($computer2)
}
$comboBox3.add_SelectedIndexChanged({
    ##########################################
    $Button1.Location = New-Object System.Drawing.Size(520,40) 
    $Button1.Size = New-Object System.Drawing.Size(150,50) 
    $Button1.Text = "RUTAS PREDETERMINADAS" 
    $Button1.UseVisualStyleBackColor = $True
    $Button1.BackColor = [System.Drawing.Color]::LightBlue
    $Button1.Add_Click({rutasPredeterminadas}) 
    $Groupbox1.Controls.Add($Button1)	

})
    }
    else{
        if($comboBox2.SelectedItem -eq 'DESHABILITAR PROXY'){
            $Groupbox1.Controls.Remove($Button1)
            $Groupbox1.Controls.Remove($comboBox3)	
            $Button4.Location = New-Object System.Drawing.Size(520,40) 
    $Button4.Size = New-Object System.Drawing.Size(150,50) 
    $Button4.Text = "DESHABILITAR AHORA" 
    $Button4.UseVisualStyleBackColor = $True
    $Button4.BackColor = [System.Drawing.Color]::LightBlue
    $Button4.Add_Click({deshabilitarRutas}) 
    $Groupbox1.Controls.Add($Button4)	
        }
    }



})

#$ComboBox2.text                  = "comboBox"



    }
    else{
        if($comboBox1.SelectedItem -eq 'RANGO DE IPS'){
            $dataGridView.Rows.Clear()
            $dataGridView.DataSource = $null
            $Form.Controls.Remove($dataGridView)
            $Form.Controls.Remove($textbox1)
            $Form.Controls.Remove($Button)
            $Form.Controls.Add($label2)	
            $Form.Controls.Add($label3) 
            $Form.Controls.Add($textbox2)
            $Form.Controls.Add($textbox3)
            $label2.text                      = "IP INICIAL"
$label2.AutoSize                  = $true
$label2.width                     = 40
$label2.height                    = 30
$label2.location                  = New-Object System.Drawing.Point(250,50)
$label2.Font                      = 'Comic Sans MS,10'

$label3.text                      = "IP FINAL"
$label3.AutoSize                  = $true
$label3.width                     = 40
$label3.height                    = 30
$label3.location                  = New-Object System.Drawing.Point(650,50)
$label3.Font                      = 'Comic Sans MS,10'


            $textbox2.Font = 'Segoe UI, 12pt'
$textbox2.Location = '360,50'
$textbox2.Margin = '5, 5, 5, 5'
$textbox2.Multiline = $True
$textbox2.Name = 'textbox5'
$textbox2.Size = '200, 30'
$textbox2.Enabled=$True
$textbox2.TabIndex = 1

$textbox3.Font = 'Segoe UI, 12pt'
	$textbox3.Location = '720,50'
	$textbox3.Margin = '5, 5, 5, 5'
	$textbox3.Multiline = $True
	$textbox3.Name = 'textbox5'
    $textbox3.Size = '200, 30'
    $textbox3.Enabled=$True
	$textbox3.TabIndex = 1
        }
        else{
            if($comboBox1.SelectedItem -eq 'ARCHIVO TXT'){
                $dataGridView.Rows.Clear()
                $dataGridView.DataSource = $null
                $Form.Controls.Remove($dataGridView)
                $Form.Controls.Remove($label2)
                $Form.Controls.Remove($label3)
                $Form.Controls.Remove($textbox1)
                $Form.Controls.Remove($textbox2)
                $Form.Controls.Remove($textbox3)
                $Form.Controls.Add($Button)	
                $Button.Location = New-Object System.Drawing.Size(300,50) 
                $Button.Size = New-Object System.Drawing.Size(150,50) 
                $Button.Text = "Seleccionar Archivo" 
                $Button.UseVisualStyleBackColor = $True
                $Button.BackColor = [System.Drawing.Color]::LightBlue
                $Button.Add_Click({Ubicacion}) 
              
                
            }
        }
    }
  
})
$Form.Controls.Add($comboBox1)

























$Form.Add_Shown({$Form.Activate()})
[void] $Form.ShowDialog();
