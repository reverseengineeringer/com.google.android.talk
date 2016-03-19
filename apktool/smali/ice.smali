.class public final Lice;
.super Lime;
.source "SourceFile"


# instance fields
.field private aj:Liad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lime;-><init>()V

    return-void
.end method

.method public static a(Lbg;)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "login.progress"

    invoke-virtual {p0, v0}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Lau;

    .line 40
    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {v0}, Lau;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lbg;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 26
    invoke-static {p0}, Lice;->b(Lbg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Progress dialog is already showing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "cancelable"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    new-instance v1, Lice;

    invoke-direct {v1}, Lice;-><init>()V

    .line 34
    invoke-virtual {v1, v0}, Lice;->setArguments(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "login.progress"

    invoke-virtual {v1, p0, v0}, Lice;->a(Lbg;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static b(Lbg;)Z
    .locals 1

    .prologue
    .line 50
    const-string v0, "login.progress"

    invoke-virtual {p0, v0}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lice;->getActivity()Lba;

    move-result-object v1

    sget v2, Laen;->kq:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 62
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Lice;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 65
    invoke-virtual {p0}, Lice;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "cancelable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 66
    return-object v1
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lime;->e(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lice;->an:Lilh;

    const-class v1, Liad;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liad;

    iput-object v0, p0, Lice;->aj:Liad;

    .line 57
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Lime;->onCancel(Landroid/content/DialogInterface;)V

    .line 72
    iget-object v0, p0, Lice;->aj:Liad;

    invoke-interface {v0}, Liad;->c()V

    .line 73
    return-void
.end method
