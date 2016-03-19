.class final Lcku;
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
    .line 126
    iput-object p1, p0, Lcku;->b:Lckr;

    iput-object p2, p0, Lcku;->a:Lcgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcgw;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public a(Lhkx;)V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcku;->b:Lckr;

    iget-object v1, p0, Lcku;->a:Lcgp;

    .line 1312
    iget-object v0, v0, Lckr;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->h()Z

    move-result v2

    .line 1313
    invoke-virtual {v1}, Lcgp;->a()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1314
    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcgp;->a(Z)V

    .line 1315
    if-eqz v2, :cond_2

    .line 1316
    const/16 v0, 0xb5

    .line 1315
    :goto_1
    invoke-static {v0}, Laal;->c(I)V

    .line 132
    :cond_0
    return-void

    .line 1314
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1316
    :cond_2
    const/16 v0, 0xb7

    goto :goto_1
.end method
