$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
            $("#form1").hide();
            $("#form2").hide();
            
        } else {
            $("#container").hide();
            $("#form1").hide();
            $("#form2").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
                
            } else {
                display(false)
            }
        }
    })
   
    
    // if the person uses the escape key, it will exit the resource
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://skin_changer/exit', JSON.stringify({}));
            return
        }
    };
    $("#close").click(function () {
        $.post('http://skin_changer/exit', JSON.stringify({}));
        return
    })
    $("#toform").click(function () {
        $("#container").hide();
        $("#form1").show();
    })
    $("#tochar").click(function () {
        $("#container").hide();
        $("#form2").show();
    })
    ///HAT STUFF
    $("#plushat").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:'plushat'
        }));
        return
    })
    $("#minushat").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:'plushat'
        }));
        return
    })
    $("#minushattext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minushattext"
        }));
        return
    })
    $("#plushattext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plushattext"
        }));
        return
    })
    ///GLASSES STUFF
    $("#plusglasses").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusglasses"
        }));
        return
    })
    $("#minusglasses").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusglasses"
        }));
        return
    })
    $("#minusglassestext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusglassestext"
        }));
        return
    })
    $("#plusglassestext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusglassestext"
        }));
        return
    })
    ///EAR
    $("#plusear").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusear"
        }));
        return
    })
    $("#minusear").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusear"
        }));
        return
    })
    $("#minuseartext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minuseartext"
        }));
        return
    })
    $("#pluseartext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"pluseartext"
        }));
        return
    })
    //////////
    ///MASK///
    //////////
    $("#plusmask").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusmask"
        }));
        return
    })
    $("#minusmask").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusmask"
        }));
        return
    })
    $("#minusmasktext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusmasktext"
        }));
        return
    })
    $("#plusmasktext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusmasktext"
        }));
        return
    })
    //////////
    ///HAIR///
    //////////
    $("#plushair").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plushair"
        }));
        return
    })
    $("#minushair").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minushair"
        }));
        return
    })
    $("#minushairtext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minushairtext"
        }));
        return
    })
    $("#plushairtext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plushairtext"
        }));
        return
    })
    //////////
    ///ARMS///
    //////////
    $("#plusarm").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusarms"
        }));
        return
    })
    $("#minusarm").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusarm"
        }));
        return
    })
    $("#minusarmtext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusarmtext"
        }));
        return
    })
    $("#plusarmtext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusarmtext"
        }));
        return
    })
    //////////
    ///BAGS///
    //////////
    $("#plusarm2").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusarms2"
        }));
        return
    })
    $("#minusarm2").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusarm2"
        }));
        return
    })
    $("#minusarm2text").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusarm2text"
        }));
        return
    })
    $("#plusarm2text").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusarm2text"
        }));
        return
    })
    ///////////
    ///SHOES///
    ///////////
    $("#plusshoes").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusshoes"
        }));
        return
    })
    $("#minusshoes").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusshoes"
        }));
        return
    })
    $("#minusshoestext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusshoestext"
        }));
        return
    })
    $("#plusshoestext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusshoestext"
        }));
        return
    })

    ///////////
    ///PANTS///
    ///////////
    $("#pluspants").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"pluspants"
        }));
        return
    })
    $("#minuspants").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minuspants"
        }));
        return
    })
    $("#minuspantstext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minuspanttext"
        }));
        return
    })
    $("#pluspantstext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"pluspanttext"
        }));
        return
    })
    /////////////
    ///SHIRTS2///
    /////////////
    $("#plusshirt2").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusshirt2"
        }));
        return
    })
    $("#minusshirt2").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusshirt2"
        }));
        return
    })
    $("#minusshirt2text").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusshirt2text"
        }));
        return
    })
    $("#plusshirt2text").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusshirt2text"
        }));
        return
    })
    ///////////
    ///SHIRT///
    ///////////
    $("#plusshirt").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusshirt"
        }));
        return
    })
    $("#minusshirt").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusshirt"
        }));
        return
    })
    $("#minusshirttext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"minusshirttext"
        }));
        return
    })
    $("#plusshirttext").click(function () {
        $.post('http://skin_changer/hat', JSON.stringify({
            txt:"plusshirttext"
        }));
        return
    })

    //////////////////////
    ///Glasses from LUA///
    //////////////////////
    window.addEventListener('message', (event) => {
		if (event.data.type === 'glassesval') {
			$("#glassesvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'glassestextval') {
			$("#glassestexturevalue").text(event.data.value);
		}
    });
    ///Hat from LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'hatval') {
			$("#hatvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'hattextval') {
			$("#hattexturevalue").text(event.data.value);
		}
    });
    ///Ear from LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'earval') {
			$("#earvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'eartextval') {
			$("#eartexturevalue").text(event.data.value);
		}
    });
    ///Mask From LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'maskval') {
			$("#maskvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'masktextval') {
			$("#masktexturevalue").text(event.data.value);
		}
    });
    ///Hair From LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'hairval') {
			$("#hairvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'hairtextval') {
			$("#hairtexturevalue").text(event.data.value);
		}
    });
    ///Arms From LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'armval') {
			$("#armvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'armtextval') {
			$("#armtexturevalue").text(event.data.value);
		}
    });
    ///Bags From LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'arm2val') {
			$("#arm2value").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'arm2textval') {
			$("#arm2texturevalue").text(event.data.value);
		}
    });
    ///Pants From LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'pantval') {
			$("#pantsvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'panttextval') {
			$("#pantstexturevalue").text(event.data.value);
		}
    });
    ///Shoes From LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'shoesval') {
			$("#shoesvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'shoestextval') {
			$("#shoestexturevalue").text(event.data.value);
		}
    });
    ///Shirt2 From LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'shirt2val') {
			$("#shirt2value").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'shirt2textval') {
			$("#shirt2texturevalue").text(event.data.value);
		}
    });
    ///Shirt From LUA///
    window.addEventListener('message', (event) => {
		if (event.data.type === 'shirtval') {
			$("#shirtvalue").text(event.data.value);
		}
    });
    window.addEventListener('message', (event) => {
		if (event.data.type === 'shirttextval') {
			$("#shirttexturevalue").text(event.data.value);
		}
    });
    ///Remove Articles///
    $("#removeear").click(function () {
        $.post('http://skin_changer/remove', JSON.stringify({
            txt:"removeear"
        }));
        return
    })
    $("#removehat").click(function () {
        $.post('http://skin_changer/remove', JSON.stringify({
            txt:"removehat"
        }));
        return
    })
    $("#removeglasses").click(function () {
        $.post('http://skin_changer/remove', JSON.stringify({
            txt:"removeglasses"
        }));
        return
    })
})
