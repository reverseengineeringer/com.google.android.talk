.class final Lbst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsb;


# instance fields
.field final synthetic a:Lbsr;


# direct methods
.method constructor <init>(Lbsr;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lbst;->a:Lbsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 90
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 91
    iget-object v0, p0, Lbst;->a:Lbsr;

    .line 1044
    iget-object v0, v0, Lbsr;->binder:Lilh;

    .line 91
    const-class v1, Lbjc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjc;

    .line 94
    new-instance v1, Lbsu;

    invoke-direct {v1, p0, p2}, Lbsu;-><init>(Lbst;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lbjc;->a(Lbje;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lbst;->a:Lbsr;

    .line 2200
    iget-object v0, v1, Lbsr;->binder:Lilh;

    const-class v2, Lbvc;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v2, 0x915

    invoke-virtual {v0, v2}, Lbvc;->a(I)V

    .line 2203
    iget-object v0, v1, Lbsr;->binder:Lilh;

    const-class v2, Lbmw;

    .line 2204
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmw;

    invoke-interface {v0}, Lbmw;->f()Z

    move-result v0

    .line 2203
    invoke-static {v0}, Lbqt;->a(Z)Landroid/content/Intent;

    move-result-object v0

    .line 2205
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2206
    iget-object v1, v1, Lbsr;->a:Lhsc;

    sget v2, Laal;->jS:I

    invoke-virtual {v1, v2, v0}, Lhsc;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method
