.class public final Lekp;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lija;


# instance fields
.field private a:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Limg;-><init>()V

    .line 27
    new-instance v0, Liiz;

    iget-object v1, p0, Lekp;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lekp;->a:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 40
    new-instance v1, Liji;

    iget-object v2, p0, Lekp;->context:Lill;

    invoke-direct {v1, v2}, Liji;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v2, Lbhh;->c:Lbhh;

    invoke-static {v0, v2}, Laal;->a(Lbfd;Lbhh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eS:I

    invoke-virtual {v1, v0}, Liji;->a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v0

    .line 46
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lekp;->context:Lill;

    const-class v4, Lcom/google/android/apps/hangouts/settings/CustomizeInvitesActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string v3, "account_id"

    iget-object v4, p0, Lekp;->a:Lhpu;

    invoke-interface {v4}, Lhpu;->a()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->aH:I

    invoke-virtual {v1, v0, v3, v2}, Liji;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;ILandroid/content/Intent;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lekp;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lekp;->a:Lhpu;

    .line 34
    return-void
.end method
