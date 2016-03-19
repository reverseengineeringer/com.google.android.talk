.class public final Lccp;
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
.method public constructor <init>(Landroid/view/View;Lccq;Lepc;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lbml;-><init>(Landroid/view/View;Ljava/lang/Object;Lepc;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 45
    const-string v2, "babel_network_change_notification"

    invoke-static {v0, v2, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lccp;->c:Ljava/lang/Object;

    check-cast v0, Lccq;

    invoke-interface {v0}, Lccq;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccp;->c:Ljava/lang/Object;

    check-cast v0, Lccq;

    invoke-interface {v0}, Lccq;->D()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0

    :cond_1
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method protected b()Lepa;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lccp;->e()Lepb;

    move-result-object v0

    iget-object v1, p0, Lccp;->b:Landroid/content/Context;

    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->gx:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lepb;->a()Lepb;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0
.end method
