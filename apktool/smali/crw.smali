.class public final Lcrw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lbng;


# direct methods
.method public constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 4944
    iput-object p1, p0, Lcrw;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 2947
    if-eqz p1, :cond_0

    .line 2948
    iget-object v0, p0, Lcrw;->a:Lbng;

    .line 3285
    iget-object v0, v0, Lbng;->binder:Lilh;

    .line 2949
    const-class v1, Lcrv;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrv;

    iget-object v1, p0, Lcrw;->a:Lbng;

    invoke-virtual {v1}, Lbng;->getActivity()Lba;

    move-result-object v1

    invoke-interface {v0, v1}, Lcrv;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2953
    iget-object v1, p0, Lcrw;->a:Lbng;

    .line 4285
    iget-object v1, v1, Lbng;->aj:Lhsc;

    .line 2953
    sget v2, Laal;->jV:I

    invoke-virtual {v1, v2, v0}, Lhsc;->a(ILandroid/content/Intent;)V

    .line 2959
    :goto_0
    return-void

    .line 2957
    :cond_0
    const-string v0, "Babel_Conv"

    const-string v1, "Location permission not granted!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
