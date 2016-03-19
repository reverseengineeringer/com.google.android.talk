.class final Lbaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lazo;

.field final synthetic b:Lbai;


# direct methods
.method constructor <init>(Lbai;Lazo;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lbaj;->b:Lbai;

    iput-object p2, p0, Lbaj;->a:Lazo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/high16 v9, 0x43200000    # 160.0f

    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 93
    iget-object v0, p0, Lbaj;->b:Lbai;

    iget-object v0, v0, Lbai;->b:Lbah;

    iget-object v1, p0, Lbaj;->a:Lazo;

    .line 1149
    if-nez v1, :cond_0

    .line 1160
    iget-object v1, v0, Lbah;->e:Lbaz;

    iget-object v2, v0, Lbah;->b:Landroid/content/Context;

    sget v3, Laal;->iC:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbaz;->b(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v1, v0, Lbah;->e:Lbaz;

    new-instance v2, Lbak;

    invoke-direct {v2, v0}, Lbak;-><init>(Lbah;)V

    invoke-virtual {v1, v2}, Lbaz;->a(Lijh;)V

    .line 1150
    :goto_0
    return-void

    .line 1279
    :cond_0
    iget-object v2, v0, Lbah;->e:Lbaz;

    invoke-virtual {v2, v10}, Lbaz;->a_(Z)V

    .line 1280
    iget-object v2, v0, Lbah;->e:Lbaz;

    iget-object v3, v0, Lbah;->b:Landroid/content/Context;

    sget v4, Laal;->iD:I

    new-array v5, v10, [Ljava/lang/Object;

    .line 1284
    invoke-virtual {v1}, Lazo;->c()Ljava/lang/String;

    move-result-object v6

    .line 1283
    invoke-static {v6}, Lezm;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    .line 1281
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1280
    invoke-virtual {v2, v3}, Lbaz;->b(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v2, v0, Lbah;->b:Landroid/content/Context;

    iget-object v3, v0, Lbah;->i:Lbba;

    .line 1287
    invoke-virtual {v1}, Lazo;->c()Ljava/lang/String;

    move-result-object v4

    .line 2097
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2099
    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 2100
    const/high16 v7, 0x41c80000    # 25.0f

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2101
    invoke-virtual {v5, v7, v6, v7, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2102
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2105
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2109
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laal;->iw:I

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "android_caller_id"

    .line 3050
    const-string v12, "https://www.google.com/support/hangouts/?hl=%locale%"

    invoke-static {v12, v11}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2111
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2109
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2106
    invoke-static {v7, v2, v8}, Laal;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 2113
    invoke-virtual {v6, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2114
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Laal;->ix:I

    .line 2115
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2116
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v5, Laal;->iu:I

    new-instance v6, Lazy;

    invoke-direct {v6, v3}, Lazy;-><init>(Lbba;)V

    .line 2118
    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Laal;->iv:I

    new-instance v5, Lazx;

    invoke-direct {v5, v0, v4}, Lazx;-><init>(Lbah;Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2140
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1292
    iget-object v3, v0, Lbah;->e:Lbaz;

    new-instance v4, Lbam;

    invoke-direct {v4, v0, v1, v2}, Lbam;-><init>(Lbah;Lazo;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Lbaz;->a(Lijh;)V

    goto/16 :goto_0
.end method
