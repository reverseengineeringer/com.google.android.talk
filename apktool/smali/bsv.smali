.class final Lbsv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbsr;


# direct methods
.method constructor <init>(Lbsr;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lbsv;->a:Lbsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lbsv;->a:Lbsr;

    .line 1200
    iget-object v0, v1, Lbsr;->binder:Lilh;

    const-class v2, Lbvc;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v2, 0x915

    invoke-virtual {v0, v2}, Lbvc;->a(I)V

    .line 1203
    iget-object v0, v1, Lbsr;->binder:Lilh;

    const-class v2, Lbmw;

    .line 1204
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmw;

    invoke-interface {v0}, Lbmw;->f()Z

    move-result v0

    .line 1203
    invoke-static {v0}, Lbqt;->a(Z)Landroid/content/Intent;

    move-result-object v0

    .line 1205
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1206
    iget-object v1, v1, Lbsr;->a:Lhsc;

    sget v2, Laal;->jS:I

    invoke-virtual {v1, v2, v0}, Lhsc;->a(ILandroid/content/Intent;)V

    .line 162
    return-void
.end method
