.class public final Lcom/google/android/libraries/social/login/settings/LoginSettingsActivity;
.super Lilv;
.source "SourceFile"

# interfaces
.implements Licn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lilv;-><init>()V

    .line 21
    new-instance v0, Lild;

    iget-object v1, p0, Lcom/google/android/libraries/social/login/settings/LoginSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lild;-><init>(Lrf;Liog;)V

    .line 22
    new-instance v0, Lich;

    iget-object v1, p0, Lcom/google/android/libraries/social/login/settings/LoginSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, p0, v1}, Lich;-><init>(Lcom/google/android/libraries/social/login/settings/LoginSettingsActivity;Lrf;Liog;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lilv;->a(Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/libraries/social/login/settings/LoginSettingsActivity;->A:Lilh;

    const-class v1, Licn;

    invoke-virtual {v0, v1, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 45
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/libraries/social/login/settings/LoginSettingsActivity;->finish()V

    .line 50
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/libraries/social/login/settings/LoginSettingsActivity;->finish()V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lilv;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Laen;->kr:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/social/login/settings/LoginSettingsActivity;->setContentView(I)V

    .line 39
    return-void
.end method
