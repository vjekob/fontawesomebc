controladdin "Icon Button"
{
    Scripts = 'FontAwesome/Scripts/iconbutton.js';
    StartupScript = 'FontAwesome/Scripts/startup.js';

    StyleSheets =
        'FontAwesome/Styles/iconbutton.css',
        'FontAwesome/Styles/fontawesome.css',
        'FontAwesome/Styles/regular.css',
        'FontAwesome/Styles/solid.css';

    Images =
        'FontAwesome/Fonts/fa-regular-400.woff',
        'FontAwesome/Fonts/fa-solid-900.woff';

    RequestedWidth = 200;
    RequestedHeight = 100;

    event ControlReady();
    procedure SetStyle(Style: Text);
    procedure SetIcon(Icon: Text);
}