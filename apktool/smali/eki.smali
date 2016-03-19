.class public final Leki;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lija;


# instance fields
.field a:Lbfd;

.field private b:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Limg;-><init>()V

    .line 31
    new-instance v0, Liiz;

    iget-object v1, p0, Leki;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 43
    new-instance v0, Liji;

    iget-object v1, p0, Leki;->context:Lill;

    invoke-direct {v0, v1}, Liji;-><init>(Landroid/content/Context;)V

    .line 46
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->eO:I

    invoke-virtual {v0, v1}, Liji;->a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v1

    .line 48
    new-instance v2, Liip;

    iget-object v0, p0, Leki;->context:Lill;

    iget-object v3, p0, Leki;->b:Lhpu;

    .line 49
    invoke-interface {v3}, Lhpu;->a()I

    move-result v3

    const-string v4, "improve_hangouts_key"

    invoke-direct {v2, v0, v3, v4}, Liip;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 50
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eQ:I

    invoke-virtual {v2, v0}, Liip;->g(I)V

    .line 51
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eP:I

    invoke-virtual {v2, v0}, Liip;->h(I)V

    .line 52
    iget-object v0, p0, Leki;->binder:Lilh;

    const-class v3, Lekh;

    .line 53
    invoke-virtual {v0, v3}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekh;

    iget-object v3, p0, Leki;->b:Lhpu;

    invoke-interface {v3}, Lhpu;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lekh;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Liip;->b(Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lekj;

    invoke-direct {v0, p0}, Lekj;-><init>(Leki;)V

    invoke-virtual {v2, v0}, Liip;->a(Lijg;)V

    .line 69
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 70
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Leki;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Leki;->b:Lhpu;

    .line 38
    iget-object v0, p0, Leki;->b:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Leki;->a:Lbfd;

    .line 39
    return-void
.end method
