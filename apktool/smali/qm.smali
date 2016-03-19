.class public final Lqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqi;


# instance fields
.field final a:Landroid/app/Activity;

.field b:Lqq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lqm;->a:Landroid/app/Activity;

    .line 509
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lqm;->a:Landroid/app/Activity;

    invoke-static {v0}, Lqp;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lqm;->b:Lqq;

    iget-object v1, p0, Lqm;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lqp;->a(Lqq;Landroid/app/Activity;I)Lqq;

    move-result-object v0

    iput-object v0, p0, Lqm;->b:Lqq;

    .line 547
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lqm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 538
    iget-object v0, p0, Lqm;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lqp;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lqq;

    move-result-object v0

    iput-object v0, p0, Lqm;->b:Lqq;

    .line 540
    iget-object v0, p0, Lqm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 541
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lqm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    .line 523
    :cond_0
    iget-object v0, p0, Lqm;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lqm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
