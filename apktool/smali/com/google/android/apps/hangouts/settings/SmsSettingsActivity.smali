.class public Lcom/google/android/apps/hangouts/settings/SmsSettingsActivity;
.super Lilv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lilv;-><init>()V

    .line 21
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/SmsSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/SmsSettingsActivity;->A:Lilh;

    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    .line 22
    new-instance v0, Lild;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/SmsSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lild;-><init>(Lrf;Liog;)V

    .line 23
    new-instance v0, Leln;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/settings/SmsSettingsActivity;->B:Lipg;

    invoke-direct {v0, p0, p0, v1}, Leln;-><init>(Lcom/google/android/apps/hangouts/settings/SmsSettingsActivity;Lrf;Liog;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lilv;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Laal;->fz:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/settings/SmsSettingsActivity;->setContentView(I)V

    .line 35
    return-void
.end method
