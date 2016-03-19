.class public Lcom/google/android/apps/hangouts/settings/RichStatusSettingsActivity;
.super Lilv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lilv;-><init>()V

    .line 18
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/RichStatusSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/RichStatusSettingsActivity;->A:Lilh;

    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    move-result-object v0

    invoke-virtual {v0}, Lhqo;->e()Lhqo;

    .line 19
    new-instance v0, Lild;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/RichStatusSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lild;-><init>(Lrf;Liog;)V

    .line 20
    new-instance v0, Lela;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/RichStatusSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, p0, v1}, Lela;-><init>(Lcom/google/android/apps/hangouts/settings/RichStatusSettingsActivity;Lrf;Liog;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lilv;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Laal;->fz:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/settings/RichStatusSettingsActivity;->setContentView(I)V

    .line 32
    return-void
.end method
