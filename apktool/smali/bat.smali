.class final Lbat;
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
.field private final a:Lbap;


# direct methods
.method constructor <init>(Lbap;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lbat;->a:Lbap;

    .line 22
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
    .line 26
    new-instance v0, Lbax;

    iget-object v1, p0, Lbat;->a:Lbap;

    invoke-virtual {v1}, Lbap;->getActivity()Lba;

    move-result-object v1

    invoke-direct {v0, v1}, Lbax;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 17
    check-cast p2, Lazo;

    .line 1036
    iget-object v0, p0, Lbat;->a:Lbap;

    invoke-virtual {v0}, Lbap;->b()V

    .line 1037
    if-eqz p2, :cond_0

    .line 1040
    iget-object v0, p0, Lbat;->a:Lbap;

    sget v1, Laen;->hA:I

    invoke-virtual {v0, v1}, Lbap;->a(I)V

    .line 17
    :cond_0
    return-void
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
    .line 45
    return-void
.end method
