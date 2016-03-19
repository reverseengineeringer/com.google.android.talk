.class final Lhhu;
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
        "Lkgz;",
        "Lkha;",
        "Llyi;",
        "Llyi;",
        "Lkhb;",
        "Lkhc;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lhbl;


# direct methods
.method constructor <init>(Lhbl;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lhhu;->a:Lhbl;

    .line 50
    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 39
    check-cast p1, Lkgz;

    .line 2055
    iget-object v0, p0, Lhhu;->a:Lhbl;

    const-string v1, "common_announcements/add"

    const-class v2, Lkha;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 39
    return-void
.end method

.method public b(Llyi;Lhbp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llyi;",
            "Lhbp",
            "<",
            "Llyi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "Common announcement modification operation is not supported"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public synthetic c(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 39
    check-cast p1, Lkhb;

    .line 1066
    iget-object v0, p0, Lhhu;->a:Lhbl;

    const-string v1, "common_announcements/remove"

    const-class v2, Lkhc;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 39
    return-void
.end method
