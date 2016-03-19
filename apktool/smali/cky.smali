.class final Lcky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcgq;


# instance fields
.field final synthetic a:Lcgp;

.field final synthetic b:Lckr;


# direct methods
.method constructor <init>(Lckr;Lcgp;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcky;->b:Lckr;

    iput-object p2, p0, Lcky;->a:Lcgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcgw;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcky;->a:Lcgp;

    iget-object v1, p0, Lcky;->b:Lckr;

    .line 1034
    invoke-virtual {v1, p1}, Lckr;->b(Lcgw;)Z

    move-result v1

    .line 283
    invoke-virtual {v0, v1}, Lcgp;->b(Z)V

    .line 284
    iget-object v0, p0, Lcky;->a:Lcgp;

    invoke-virtual {v0}, Lcgp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcky;->b:Lckr;

    iget-object v1, p0, Lcky;->a:Lcgp;

    .line 2034
    invoke-virtual {v0, v1, p1}, Lckr;->a(Lcgp;Lcgw;)V

    .line 287
    :cond_0
    return-void
.end method

.method public a(Lhkx;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method
