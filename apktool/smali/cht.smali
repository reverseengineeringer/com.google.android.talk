.class public final Lcht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcht;->a:Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    packed-switch p2, :pswitch_data_0

    .line 103
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected trigger for GlowPadView widget value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laal;->k(Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-void

    .line 97
    :pswitch_1
    iget-object v4, p0, Lcht;->a:Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;

    .line 1240
    iget-object v0, v4, Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;->j:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->h()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1241
    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "android.permission.CAMERA"

    .line 1243
    invoke-virtual {v4, v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1245
    :goto_2
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 1246
    invoke-virtual {v4, v3}, Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 1248
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;->g()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    .line 1217
    :cond_0
    :goto_4
    if-eqz v1, :cond_5

    .line 1218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1219
    invoke-virtual {v4}, Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->eu:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1220
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lchs;

    invoke-direct {v2, v4}, Lchs;-><init>(Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;)V

    .line 1221
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1232
    iget-object v0, v4, Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;->j:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 1233
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->b()Lbfd;

    move-result-object v0

    const/16 v1, 0xa7a

    .line 1232
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1240
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1243
    goto :goto_2

    :cond_3
    move v3, v2

    .line 1246
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1248
    goto :goto_4

    .line 1235
    :cond_5
    iget-object v0, v4, Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;->j:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->k()V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcht;->a:Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;

    .line 2043
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/IncomingRingActivity;->j:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->l()V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
