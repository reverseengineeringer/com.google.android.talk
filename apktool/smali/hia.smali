.class final Lhia;
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
        "Lkhn;",
        "Lkho;",
        "Lkhp;",
        "Lkhq;",
        "Lkhr;",
        "Lkhs;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lhbl;


# direct methods
.method constructor <init>(Lhbl;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lhia;->a:Lhbl;

    .line 68
    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 56
    check-cast p1, Lkhn;

    .line 3073
    iget-object v0, p0, Lhia;->a:Lhbl;

    const-string v1, "hangout_participants/add"

    const-class v2, Lkho;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 56
    return-void
.end method

.method public synthetic b(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 56
    check-cast p1, Lkhp;

    .line 2079
    iget-object v0, p0, Lhia;->a:Lhbl;

    const-string v1, "hangout_participants/modify"

    const-class v2, Lkhq;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 56
    return-void
.end method

.method public synthetic c(Llyi;Lhbp;)V
    .locals 3

    .prologue
    .line 56
    check-cast p1, Lkhr;

    .line 1086
    iget-object v0, p0, Lhia;->a:Lhbl;

    const-string v1, "hangout_participants/remove"

    const-class v2, Lkhs;

    invoke-interface {v0, v1, p1, v2, p2}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    .line 56
    return-void
.end method
