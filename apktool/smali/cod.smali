.class final Lcod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcob;
.implements Ldjo;


# instance fields
.field a:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcod;->a:I

    if-lez v0, :cond_0

    .line 30
    sget v0, Laal;->mj:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 24
    sget v0, Laal;->mm:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 25
    return-void
.end method

.method public a(Liog;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcoe;

    .line 1052
    invoke-direct {v0, p0}, Lcoe;-><init>(Lcod;)V

    .line 45
    invoke-virtual {p1, v0}, Liog;->a(Lioz;)Lioz;

    .line 46
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 36
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Laal;->mj:I

    if-ne v0, v1, :cond_0

    .line 37
    invoke-static {p1}, Lcoh;->a(Landroid/app/Activity;)V

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
