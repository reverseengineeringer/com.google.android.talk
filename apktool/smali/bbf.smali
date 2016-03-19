.class final Lbbf;
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
.field final synthetic a:Lbbe;


# direct methods
.method constructor <init>(Lbbe;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lbbf;->a:Lbbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 2
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
    .line 54
    new-instance v0, Lbax;

    iget-object v1, p0, Lbbf;->a:Lbbe;

    .line 1021
    iget-object v1, v1, Lbbe;->b:Lba;

    .line 54
    invoke-direct {v0, v1}, Lbax;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 50
    check-cast p2, Lazo;

    .line 1060
    iget-object v3, p0, Lbbf;->a:Lbbe;

    iget-object v0, p0, Lbbf;->a:Lbbe;

    .line 2021
    iget-object v1, v0, Lbbe;->a:Ldvv;

    .line 1060
    invoke-static {p2}, Lknq;->c(Ljava/lang/Object;)Lknq;

    move-result-object v2

    .line 3078
    invoke-virtual {v1}, Ldvv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezm;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    const-string v4, "If CallerId is blocked, CallerId settings should never be loaded"

    invoke-static {v0, v4}, Laen;->b(ZLjava/lang/Object;)V

    .line 3080
    invoke-virtual {v2}, Lknq;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lknq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazo;

    invoke-virtual {v0}, Lazo;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3081
    invoke-virtual {v2}, Lknq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazo;

    .line 3101
    iget-object v5, v3, Lbbe;->b:Lba;

    iget-object v4, v3, Lbbe;->e:Lbba;

    iget-object v1, v3, Lbbe;->a:Ldvv;

    iget v2, v3, Lbbe;->c:I

    iget-object v3, v3, Lbbe;->d:Ljava/lang/String;

    .line 4038
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v8

    .line 4039
    invoke-virtual {v0}, Lazo;->c()Ljava/lang/String;

    move-result-object v9

    .line 4040
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4041
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v8, v0

    .line 4043
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v10, Laal;->ir:I

    .line 4044
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Laal;->io:I

    new-instance v0, Lazv;

    invoke-direct/range {v0 .. v5}, Lazv;-><init>(Ldvv;ILjava/lang/String;Lbba;Landroid/content/Context;)V

    .line 4045
    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4059
    if-eqz v8, :cond_1

    .line 4060
    sget v1, Laal;->ip:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Laal;->is:I

    new-instance v4, Lazw;

    invoke-direct {v4, v5, v2}, Lazw;-><init>(Landroid/content/Context;I)V

    .line 4061
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4084
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3102
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3081
    :goto_3
    return-void

    :cond_0
    move v0, v7

    .line 3078
    goto :goto_0

    .line 4080
    :cond_1
    sget v1, Laal;->iq:I

    new-array v2, v6, [Ljava/lang/Object;

    .line 4082
    invoke-static {v9}, Lezm;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 4080
    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 3083
    :cond_2
    invoke-virtual {v1, v2}, Ldvv;->a(Lknq;)V

    .line 3087
    invoke-virtual {v2}, Lknq;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3088
    iget-object v0, v3, Lbbe;->e:Lbba;

    const/16 v2, 0x8c9

    invoke-virtual {v0, v2}, Lbba;->a(I)V

    .line 3090
    :cond_3
    iget-object v0, v3, Lbbe;->b:Lba;

    iget v2, v3, Lbbe;->c:I

    iget-object v4, v3, Lbbe;->d:Ljava/lang/String;

    .line 3091
    invoke-virtual {v1, v2, v4}, Ldvv;->a(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3090
    invoke-virtual {v0, v1}, Lba;->startActivity(Landroid/content/Intent;)V

    .line 3092
    iget-object v0, v3, Lbbe;->b:Lba;

    invoke-virtual {v0}, Lba;->finish()V

    goto :goto_3

    :cond_4
    move v8, v7

    goto :goto_1
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
    .line 64
    return-void
.end method
