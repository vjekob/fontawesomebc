(function() {
    var hostControl, iconControl, captionControl, iconStyle, iconIcon;

    window.initialize = function() {
        hostControl = document.getElementById("controlAddIn");

        var button = document.createElement("div");
        button.classList.add("button");
        button.addEventListener("click", function() {
            Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnClick", []);
        });
        hostControl.appendChild(button);

        iconControl = document.createElement("span");
        iconControl.classList.add("icon");
        button.appendChild(iconControl);

        captionControl = document.createElement("span");
        captionControl.classList.add("caption");
        button.appendChild(captionControl);
        setCaption();
    }

    function setCaption() {
        captionControl.innerText = iconStyle && iconIcon
            ? iconStyle + " " + iconIcon
            : "(set style)";
    }

    window.SetStyle = function(style) {
        iconStyle && iconControl.classList.remove(iconStyle);
        style && iconControl.classList.add(iconStyle = style);
        setCaption();
    }

    window.SetIcon = function(icon) {
        iconIcon && iconControl.classList.remove(iconIcon);
        icon && iconControl.classList.add(iconIcon = icon);
        setCaption();
    }
})();