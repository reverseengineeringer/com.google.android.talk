.class public final Liaz;
.super Lime;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private aj:Liad;

.field private ak:Lhpz;

.field private al:Ljto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lime;-><init>()V

    return-void
.end method

.method public static a(Lbg;Ljava/lang/String;[IZ)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "account_ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 43
    const-string v1, "add_account_enabled"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    new-instance v1, Liaz;

    invoke-direct {v1}, Liaz;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Liaz;->setArguments(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "account.selector"

    invoke-virtual {v1, p0, v0}, Liaz;->a(Lbg;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 59
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Liaz;->getActivity()Lba;

    move-result-object v1

    sget v2, Laal;->uv:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 60
    invoke-virtual {p0}, Liaz;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v3, "account_ids"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 63
    const-string v4, "add_account_enabled"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 65
    iget-object v4, p0, Liaz;->al:Ljto;

    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Liaz;->al:Ljto;

    const-string v5, "AccountSelection"

    invoke-virtual {v4, p0, v5}, Ljto;->a(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    .line 68
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Liay;

    invoke-direct {v4, v0, v3, v1}, Liay;-><init>(Landroid/content/Context;[IZ)V

    .line 70
    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lime;->e(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Liaz;->an:Lilh;

    const-class v1, Liad;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liad;

    iput-object v0, p0, Liaz;->aj:Liad;

    .line 53
    iget-object v0, p0, Liaz;->an:Lilh;

    const-class v1, Lhpz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Liaz;->ak:Lhpz;

    .line 54
    iget-object v0, p0, Liaz;->an:Lilh;

    const-class v1, Ljto;

    invoke-virtual {v0, v1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljto;

    iput-object v0, p0, Liaz;->al:Ljto;

    .line 55
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Liaz;->aj:Liad;

    invoke-interface {v0}, Liad;->c()V

    .line 168
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Liaz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Liaz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "add_account_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 145
    iget-object v0, p0, Liaz;->an:Lilh;

    const-class v3, Liad;

    invoke-virtual {v0, v3}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liad;

    .line 147
    if-eqz v1, :cond_0

    array-length v1, v2

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    .line 148
    :goto_0
    if-nez v1, :cond_2

    .line 149
    aget v1, v2, p2

    .line 150
    iget-object v2, p0, Liaz;->ak:Lhpz;

    invoke-interface {v2, v1}, Lhpz;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    invoke-interface {v0}, Liad;->c()V

    .line 163
    :goto_1
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Liaz;->ak:Lhpz;

    invoke-interface {v2, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v1

    .line 157
    const-string v2, "account_name"

    .line 158
    invoke-interface {v1, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "effective_gaia_id"

    .line 159
    invoke-interface {v1, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-interface {v0, v2, v1}, Liad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_2
    invoke-interface {v0}, Liad;->b()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-super {p0}, Lime;->onStart()V

    .line 79
    invoke-virtual {p0}, Liaz;->c()Landroid/app/Dialog;

    move-result-object v1

    .line 80
    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Liaz;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, v1

    .line 94
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const-string v0, "titleDivider"

    const-string v2, "id"

    const-string v4, "android"

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 98
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_2
    const-string v0, "title_template"

    const-string v2, "id"

    const-string v4, "android"

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tZ:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    .line 118
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v2

    .line 119
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v1

    .line 120
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 121
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 127
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 128
    invoke-virtual {v4, v2, v0, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    :cond_3
    const-string v0, "alertTitle"

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Liaz;->c()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 123
    :cond_4
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 124
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 125
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7, v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method
