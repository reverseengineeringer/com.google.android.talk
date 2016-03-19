.class final Lcgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcnz;


# instance fields
.field final synthetic a:Lcgf;


# direct methods
.method constructor <init>(Lcgf;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcgg;->a:Lcgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v1, p2}, Lcgw;->a(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {v1}, Lcgw;->q()Lhcs;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p2}, Lhcs;->a(Landroid/os/Bundle;)V

    .line 37
    :cond_0
    const-class v0, Lhpu;

    .line 39
    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 38
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    invoke-static {v0}, Laal;->c(Lbfd;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "Triggering log upload for troubleshooting."

    invoke-virtual {v1, v0}, Lcgw;->e(Ljava/lang/String;)V

    .line 44
    :cond_1
    return-void
.end method
