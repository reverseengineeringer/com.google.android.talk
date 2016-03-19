.class final Lbnl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldcl;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 1965
    iput-object p1, p0, Lbnl;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldcm;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1969
    invoke-static {p1}, Laal;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lbnl;->a:Lbng;

    .line 2285
    iget-object v0, v0, Lbng;->ay:Lbrk;

    .line 1970
    iget-object v1, p0, Lbnl;->a:Lbng;

    .line 3285
    iget-object v1, v1, Lbng;->az:Leit;

    .line 1971
    iget-object v2, p0, Lbnl;->a:Lbng;

    .line 4285
    iget-object v2, v2, Lbng;->at:Lbfd;

    .line 1970
    invoke-virtual {v0, p2, v1, v2}, Lbrk;->a(Landroid/os/Bundle;Leit;Lbfd;)V

    .line 1973
    :cond_0
    return-void
.end method
