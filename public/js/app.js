/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



// play sound 
function playSound(name) {
    var player = document.getElementById("soundPlayer");

    player.src = public_path + "/audio/" + name + ".mp3";
    player.play();
}


function viewImage(image) {

    var modal = document.createElement("div");
    modal.className = "w3-modal w3-block nicescroll";
    modal.style.zIndex = "10000000";

    modal.innerHTML = "<center><div class='w3-animate-zoom' > " +
            "<img src='" + image.src + "' />"
            + "</div></center>  ";

    modal.onclick = function () {
        modal.remove();
    };

    document.body.appendChild(modal);
}

function loadImage(input, event) {
    var file = event.target.files[0];

    if (file.size > (5 * 1000 * 1000)) {
        error(__('max_upload_image_is_5m'));
        return;
    }
    $(input).parent().find(".imageView")[0].src = URL.createObjectURL(file);
}



//Create PDf from HTML...
function CreatePDFfromHTML(selector, pdfName) {
    var HTML_Width = $(selector).width();
    var HTML_Height = $(selector).height();
    var top_left_margin = 15;
    var PDF_Width = HTML_Width + (top_left_margin * 2);
    var PDF_Height = (PDF_Width * 1.5) + (top_left_margin * 2);
    var canvas_image_width = HTML_Width;
    var canvas_image_height = HTML_Height;

    var totalPDFPages = Math.ceil(HTML_Height / PDF_Height) - 1;

    html2canvas($(selector)[0]).then(function (canvas) {
        var imgData = canvas.toDataURL("image/jpeg", 1.0);
        var pdf = new jsPDF('p', 'pt', [PDF_Width, PDF_Height]);
        pdf.addImage(imgData, 'JPG', top_left_margin, top_left_margin, canvas_image_width, canvas_image_height);
        for (var i = 1; i <= totalPDFPages; i++) {
            pdf.addPage(PDF_Width, PDF_Height);
            pdf.addImage(imgData, 'JPG', top_left_margin, -(PDF_Height * i) + (top_left_margin * 4), canvas_image_width, canvas_image_height);
        }
        pdf.save(pdfName + ".pdf");
        //$(selector).hide();
    });
}

function convertToDoc(selector, name)
{
    var converted = htmlDocx.asBlob($(selector).html());
    saveAs(converted, name + '.docx');

}

function ExportToExcel(selector, name) {
    var html = $(selector).html();
    window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
}