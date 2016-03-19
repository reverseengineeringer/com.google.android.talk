.class final Lhhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhhn",
        "<",
        "Lkhg;",
        "Lkhh;",
        "Lkhi;",
        "Lkhj;",
        "Lkhx;",
        "Lkhy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lhbl;


# direct methods
.method constructor <init>(Lhbl;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lhhx;->a:Lhbl;

    .line 55
    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 43
    check-cast p1, Lkhg;

    .line 3061
    iget-object v0, p0, Lhhx;->a:Lhbl;

    const-string v1, "hangouts/add"

    const-class v2, Lkhh;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 43
    return-void
.end method

.method public synthetic b(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 43
    check-cast p1, Lkhi;

    .line 2067
    iget-object v0, p0, Lhhx;->a:Lhbl;

    const-string v1, "hangouts/modify"

    const-class v2, Lkhj;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 43
    return-void
.end method

.method public synthetic c(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 43
    check-cast p1, Lkhx;

    .line 1073
    iget-object v0, p0, Lhhx;->a:Lhbl;

    const-string v1, "hangouts/remove"

    const-class v2, Lkhy;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 43
    return-void
.end method
