.class final Lhid;
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
        "Lkjg;",
        "Lkjh;",
        "Lkji;",
        "Lkjj;",
        "Lkjk;",
        "Lkjl;",
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
    iput-object p1, p0, Lhid;->a:Lhbl;

    .line 50
    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 38
    check-cast p1, Lkjg;

    .line 3055
    iget-object v0, p0, Lhid;->a:Lhbl;

    const-string v1, "media_sources/add"

    const-class v2, Lkjh;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 38
    return-void
.end method

.method public synthetic b(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 38
    check-cast p1, Lkji;

    .line 2061
    iget-object v0, p0, Lhid;->a:Lhbl;

    const-string v1, "media_sources/modify"

    const-class v2, Lkjj;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 38
    return-void
.end method

.method public synthetic c(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 38
    check-cast p1, Lkjk;

    .line 1067
    iget-object v0, p0, Lhid;->a:Lhbl;

    const-string v1, "media_sources/remove"

    const-class v2, Lkjl;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 38
    return-void
.end method
