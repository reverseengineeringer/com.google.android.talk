.class final Lcff;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcfc;


# direct methods
.method constructor <init>(Lcfc;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcff;->a:Lcfc;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 1

    .prologue
    .line 296
    check-cast p1, Lkgd;

    .line 2299
    iget-object v0, p0, Lcff;->a:Lcfc;

    .line 3095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 2299
    invoke-virtual {v0, p1}, Lcgw;->a(Lkgd;)V

    .line 296
    return-void
.end method

.method public synthetic a(Llyi;Llyi;)V
    .locals 1

    .prologue
    .line 296
    check-cast p2, Lkgd;

    .line 1304
    iget-object v0, p0, Lcff;->a:Lcfc;

    .line 2095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1304
    invoke-virtual {v0, p2}, Lcgw;->a(Lkgd;)V

    .line 296
    return-void
.end method
