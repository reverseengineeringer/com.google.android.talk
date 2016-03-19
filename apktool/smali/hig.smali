.class final Lhig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbp",
        "<TAddResponse;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhbp;

.field final synthetic b:Lhie;


# direct methods
.method constructor <init>(Lhie;Lhbp;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lhig;->b:Lhie;

    iput-object p2, p0, Lhig;->a:Lhbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llyi;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAddResponse;)V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lhig;->b:Lhie;

    .line 1027
    iget-object v0, v0, Lhie;->a_:Lhhr;

    .line 112
    iget-object v1, p0, Lhig;->b:Lhie;

    .line 2027
    iget-object v1, v1, Lhie;->b:Lhhm;

    .line 113
    invoke-interface {v1, p1}, Lhhm;->a(Llyi;)Lkko;

    move-result-object v1

    .line 3161
    new-instance v2, Lkkc;

    invoke-direct {v2}, Lkkc;-><init>()V

    .line 3162
    iput-object v1, v2, Lkkc;->b:Lkko;

    .line 3163
    new-instance v1, Lkkb;

    invoke-direct {v1}, Lkkb;-><init>()V

    .line 3164
    const/4 v3, 0x1

    new-array v3, v3, [Lkkc;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iput-object v3, v1, Lkkb;->a:[Lkkc;

    .line 112
    invoke-virtual {v0, v1}, Lhhr;->a(Lkkb;)V

    .line 114
    iget-object v0, p0, Lhig;->a:Lhbp;

    invoke-interface {v0, p1}, Lhbp;->a(Llyi;)V

    .line 115
    return-void
.end method

.method public b(Llyi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAddResponse;)V"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lhig;->a:Lhbp;

    invoke-interface {v0, p1}, Lhbp;->b(Llyi;)V

    .line 120
    return-void
.end method
