.class public final Lccm;
.super Lbml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbml",
        "<",
        "Lcco;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcco;Lepc;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lbml;-><init>(Landroid/view/View;Ljava/lang/Object;Lepc;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lccm;->c:Ljava/lang/Object;

    check-cast v0, Lcco;

    invoke-interface {v0}, Lcco;->F()Z

    move-result v0

    return v0
.end method

.method protected b()Lepa;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lccm;->e()Lepb;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lccm;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 38
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->ay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lepb;->a(Ljava/lang/String;)Lepb;

    .line 39
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->V:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepb;->c(Ljava/lang/String;)Lepb;

    .line 40
    new-instance v1, Lccn;

    invoke-direct {v1, p0}, Lccn;-><init>(Lccm;)V

    invoke-virtual {v0, v1}, Lepb;->a(Leph;)Lepb;

    .line 55
    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0
.end method
