.class final Lbae;
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
.field final synthetic a:Lbab;


# direct methods
.method constructor <init>(Lbab;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lbae;->a:Lbab;

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
    .line 87
    new-instance v0, Lbay;

    iget-object v1, p0, Lbae;->a:Lbab;

    .line 1035
    iget-object v1, v1, Lbab;->b:Lba;

    .line 87
    iget-object v2, p0, Lbae;->a:Lbab;

    .line 2035
    iget-object v2, v2, Lbab;->c:Lazr;

    .line 87
    invoke-direct {v0, v1, v2}, Lbay;-><init>(Landroid/content/Context;Lazr;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 83
    check-cast p2, Lazo;

    .line 2094
    iget-object v0, p0, Lbae;->a:Lbab;

    .line 3065
    if-eqz p2, :cond_0

    .line 3066
    iget-object v1, v0, Lbab;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lbab;->b:Lba;

    sget v3, Laal;->it:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 3068
    invoke-virtual {p2}, Lazo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 3067
    invoke-virtual {v2, v3, v4}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3066
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3069
    iget-object v0, v0, Lbab;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 3071
    :cond_0
    iget-object v1, v0, Lbab;->a:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3072
    iget-object v0, v0, Lbab;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
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
    .line 98
    return-void
.end method
