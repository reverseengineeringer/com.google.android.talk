.class final Lckx;
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
    .line 234
    iput-object p1, p0, Lckx;->b:Lckr;

    iput-object p2, p0, Lckx;->a:Lcgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcgw;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lckx;->a:Lcgp;

    iget-object v1, p0, Lckx;->b:Lckr;

    .line 2034
    invoke-virtual {v1, p1}, Lckr;->a(Lcgw;)Z

    move-result v1

    .line 244
    invoke-virtual {v0, v1}, Lcgp;->b(Z)V

    .line 245
    return-void
.end method

.method public a(Lhkx;)V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lckx;->b:Lckr;

    iget-object v1, p0, Lckx;->a:Lcgp;

    .line 1301
    iget-object v0, v0, Lckr;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->i()Z

    move-result v2

    .line 1302
    invoke-virtual {v1}, Lcgp;->a()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1303
    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcgp;->a(Z)V

    .line 1304
    if-eqz v2, :cond_2

    .line 1306
    const/16 v0, 0xb6

    .line 1304
    :goto_1
    invoke-static {v0}, Laal;->c(I)V

    .line 240
    :cond_0
    return-void

    .line 1303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1307
    :cond_2
    const/16 v0, 0xb8

    goto :goto_1
.end method
