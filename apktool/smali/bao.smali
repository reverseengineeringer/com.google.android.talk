.class final Lbao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lck",
        "<",
        "Lazo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbah;


# direct methods
.method constructor <init>(Lbah;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lbao;->a:Lbah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Lazo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lbay;

    iget-object v1, p0, Lbao;->a:Lbah;

    .line 1047
    iget-object v1, v1, Lbah;->b:Landroid/content/Context;

    .line 111
    iget-object v2, p0, Lbao;->a:Lbah;

    .line 2047
    iget-object v2, v2, Lbah;->d:Lazr;

    .line 111
    invoke-direct {v0, v1, v2}, Lbay;-><init>(Landroid/content/Context;Lazr;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 13

    .prologue
    const/high16 v8, 0x43200000    # 160.0f

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 108
    check-cast p2, Lazo;

    .line 2118
    iget-object v0, p0, Lbao;->a:Lbah;

    .line 3149
    if-nez p2, :cond_0

    .line 3160
    iget-object v1, v0, Lbah;->e:Lbaz;

    iget-object v2, v0, Lbah;->b:Landroid/content/Context;

    sget v3, Laal;->iC:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbaz;->b(Ljava/lang/CharSequence;)V

    .line 3163
    iget-object v1, v0, Lbah;->e:Lbaz;

    new-instance v2, Lbak;

    invoke-direct {v2, v0}, Lbak;-><init>(Lbah;)V

    invoke-virtual {v1, v2}, Lbaz;->a(Lijh;)V

    .line 3150
    :goto_0
    return-void

    .line 3279
    :cond_0
    iget-object v1, v0, Lbah;->e:Lbaz;

    invoke-virtual {v1, v9}, Lbaz;->a_(Z)V

    .line 3280
    iget-object v1, v0, Lbah;->e:Lbaz;

    iget-object v2, v0, Lbah;->b:Landroid/content/Context;

    sget v3, Laal;->iD:I

    new-array v4, v9, [Ljava/lang/Object;

    .line 3284
    invoke-virtual {p2}, Lazo;->c()Ljava/lang/String;

    move-result-object v5

    .line 3283
    invoke-static {v5}, Lezm;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    .line 3281
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3280
    invoke-virtual {v1, v2}, Lbaz;->b(Ljava/lang/CharSequence;)V

    .line 3285
    iget-object v1, v0, Lbah;->b:Landroid/content/Context;

    iget-object v2, v0, Lbah;->i:Lbba;

    .line 3287
    invoke-virtual {p2}, Lazo;->c()Ljava/lang/String;

    move-result-object v3

    .line 4097
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4099
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 4100
    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 4101
    invoke-virtual {v4, v6, v5, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4102
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4105
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4109
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Laal;->iw:I

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "android_caller_id"

    .line 5050
    const-string v11, "https://www.google.com/support/hangouts/?hl=%locale%"

    invoke-static {v11, v10}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 4111
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 4109
    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4106
    invoke-static {v6, v1, v7}, Laal;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4114
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Laal;->ix:I

    .line 4115
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 4116
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v4, Laal;->iu:I

    new-instance v5, Lazy;

    invoke-direct {v5, v2}, Lazy;-><init>(Lbba;)V

    .line 4118
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laal;->iv:I

    new-instance v4, Lazx;

    invoke-direct {v4, v0, v3}, Lazx;-><init>(Lbah;Ljava/lang/String;)V

    .line 4130
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 4140
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3292
    iget-object v2, v0, Lbah;->e:Lbaz;

    new-instance v3, Lbam;

    invoke-direct {v3, v0, p2, v1}, Lbam;-><init>(Lbah;Lazo;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Lbaz;->a(Lijh;)V

    goto/16 :goto_0
.end method

.method public onLoaderReset(Lfe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Lazo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    return-void
.end method
