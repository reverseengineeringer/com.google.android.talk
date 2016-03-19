.class final Lhii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbp",
        "<TRemoveResponse;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llyi;

.field final synthetic b:Lhbp;

.field final synthetic c:Lhie;


# direct methods
.method constructor <init>(Lhie;Llyi;Lhbp;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lhii;->c:Lhie;

    iput-object p2, p0, Lhii;->a:Llyi;

    iput-object p3, p0, Lhii;->b:Lhbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llyi;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRemoveResponse;)V"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lhii;->c:Lhie;

    .line 1027
    iget-object v0, v0, Lhie;->a_:Lhhr;

    .line 148
    iget-object v1, p0, Lhii;->c:Lhie;

    .line 2027
    iget-object v1, v1, Lhie;->b:Lhhm;

    .line 149
    iget-object v2, p0, Lhii;->a:Llyi;

    invoke-interface {v1, v2, p1}, Lhhm;->a(Llyi;Llyi;)Lkko;

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

    .line 148
    invoke-virtual {v0, v1}, Lhhr;->a(Lkkb;)V

    .line 150
    iget-object v0, p0, Lhii;->b:Lhbp;

    invoke-interface {v0, p1}, Lhbp;->a(Llyi;)V

    .line 151
    return-void
.end method

.method public b(Llyi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRemoveResponse;)V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lhii;->b:Lhbp;

    invoke-interface {v0, p1}, Lhbp;->b(Llyi;)V

    .line 156
    return-void
.end method
