page 50100 "Font Awesome"
{
    PageType = Card;

    layout
    {
        area(Content)
        {
            group(FontAwesome)
            {
                Caption = 'Font Awesome';

                group(Configuration)
                {
                    Caption = 'Configuration';

                    field(Style; Style)
                    {
                        Caption = 'Style';
                        ApplicationArea = All;

                        trigger OnValidate();
                        begin
                            SetStyle();
                        end;
                    }

                    field(Icon; Icon)
                    {
                        Caption = 'Icon';
                        ApplicationArea = All;

                        trigger OnValidate();
                        begin
                            SetIcon();
                        end;
                    }
                }

                group(IconPreview)
                {
                    Caption = 'Icon Preview';

                    usercontrol(IconButton; "Icon Button")
                    {
                        ApplicationArea = All;

                        trigger ControlReady();
                        begin
                            IsReady := true;
                            SetStyle();
                            SetIcon();
                        end;
                    }
                }
            }
        }
    }

    var
        IsReady: Boolean;
        Style: Text;
        Icon: Text;

    local procedure SetStyle();
    begin
        if not IsReady then
            exit;

        CurrPage.IconButton.SetStyle(Style);
    end;

    local procedure SetIcon();
    begin
        if not IsReady then
            exit;

        CurrPage.IconButton.SetIcon(Icon);
    end;

    trigger OnInit();
    begin
        Style := 'fa';
        Icon := 'fa-rocket';
    end;
}