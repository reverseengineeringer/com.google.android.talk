.class final Lhcl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbp",
        "<",
        "Lkhs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhci;


# direct methods
.method constructor <init>(Lhci;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lhcl;->b:Lhci;

    iput-object p2, p0, Lhcl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 5

    .prologue
    .line 1782
    iget-object v0, p0, Lhcl;->b:Lhci;

    .line 2121
    iget-object v0, v0, Lhci;->c:Lhcs;

    .line 1782
    iget-object v1, p0, Lhcl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhcs;->b(Ljava/lang/String;)Lhil;

    move-result-object v0

    .line 1783
    if-nez v0, :cond_0

    .line 1785
    const-string v0, "vclib"

    const-string v1, "Got an ENDPOINT_EXITED event for %s, which doesn\'t exist in our endpoints"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lhcl;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1788
    :goto_0
    return-void

    .line 1790
    :cond_0
    iget-object v1, p0, Lhcl;->b:Lhci;

    .line 3121
    iget-object v1, v1, Lhci;->c:Lhcs;

    .line 1790
    invoke-virtual {v1, v0}, Lhcs;->b(Lhil;)V

    .line 1791
    new-instance v1, Lhio;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lhio;-><init>(Ljava/lang/Integer;)V

    .line 1792
    iget-object v2, p0, Lhcl;->b:Lhci;

    invoke-static {v2, v0, v1}, Lhci;->a(Lhci;Lhil;Latn;)V

    goto :goto_0
.end method

.method public synthetic b(Llyi;)V
    .locals 4

    .prologue
    .line 3777
    const-string v0, "Failed to kick participant: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhcl;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 4121
    invoke-static {v0, v1}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    return-void
.end method
