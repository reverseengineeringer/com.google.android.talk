.class public final Lddk;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 281
    iput-object p1, p0, Lddk;->a:Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;

    .line 282
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lddk;->a:Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;

    .line 1030
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;->a()V

    .line 289
    iget-object v0, p0, Lddk;->a:Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2030
    sput-boolean v3, Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;->b:Z

    .line 291
    iget-object v0, p0, Lddk;->a:Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;->dismissDialog(I)V

    .line 292
    iget-object v0, p0, Lddk;->a:Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;

    iget-object v1, p0, Lddk;->a:Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;

    .line 294
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->iV:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
