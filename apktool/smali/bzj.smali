.class public final Lbzj;
.super Lbml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbml",
        "<",
        "Lccq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lepc;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lbml;-><init>(Landroid/view/View;Ljava/lang/Object;Lepc;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 30
    const-string v2, "babel_network_change_notification"

    invoke-static {v0, v2, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lbzj;->b:Landroid/content/Context;

    const-class v2, Lcwo;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwo;

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcwo;->a()Lcwn;

    move-result-object v0

    sget-object v2, Lcwn;->c:Lcwn;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0

    :cond_1
    move v0, v1

    .line 36
    goto :goto_0
.end method

.method protected b()Lepa;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lbzj;->e()Lepb;

    move-result-object v0

    iget-object v1, p0, Lbzj;->b:Landroid/content/Context;

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->W:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0
.end method
