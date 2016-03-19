.class public Ldk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field d:Lcy;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldk;->g:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1603
    const/4 v0, 0x0

    .line 1604
    iget-object v1, p0, Ldk;->d:Lcy;

    if-eqz v1, :cond_0

    .line 1605
    iget-object v0, p0, Ldk;->d:Lcy;

    invoke-virtual {v0}, Lcy;->g()Landroid/app/Notification;

    move-result-object v0

    .line 1607
    :cond_0
    return-object v0
.end method

.method public a(Lcy;)V
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Ldk;->d:Lcy;

    if-eq v0, p1, :cond_0

    .line 1595
    iput-object p1, p0, Ldk;->d:Lcy;

    .line 1596
    iget-object v0, p0, Ldk;->d:Lcy;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Ldk;->d:Lcy;

    invoke-virtual {v0, p0}, Lcy;->a(Ldk;)Lcy;

    .line 1600
    :cond_0
    return-void
.end method
