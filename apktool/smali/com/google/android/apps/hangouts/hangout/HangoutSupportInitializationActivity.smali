.class public final Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;
.super Lcbr;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcbr;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcbr;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1041
    const-class v0, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1042
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "hangout_room_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcgs;

    .line 1043
    invoke-virtual {v0}, Lcgs;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v0

    .line 1044
    const-string v2, "account_id"

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->finish()V

    .line 36
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hangout_room_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcgs;

    .line 1050
    invoke-virtual {v0}, Lcgs;->s()V

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ef:I

    .line 1059
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1061
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1062
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->gZ:I

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1063
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1064
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1057
    :cond_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eg:I

    goto :goto_1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 71
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fe:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/hangout/HangoutSupportInitializationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 74
    return-object v0
.end method
