.class public final Ldhz;
.super Lau;
.source "SourceFile"


# instance fields
.field private aj:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lau;-><init>()V

    return-void
.end method

.method public static a(II)Ldhz;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string v1, "request_code"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    new-instance v1, Ldhz;

    invoke-direct {v1}, Ldhz;-><init>()V

    .line 56
    invoke-virtual {v1, v0}, Ldhz;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Ldhz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Ldhz;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 71
    invoke-virtual {p0}, Ldhz;->getActivity()Lba;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lfhr;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ldhz;->aj:Landroid/app/Dialog;

    .line 73
    iget-object v0, p0, Ldhz;->aj:Landroid/app/Dialog;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ldhz;->aj:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Ldhz;->f()V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lau;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Ldhz;->a()V

    .line 81
    invoke-virtual {p0}, Ldhz;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->finish()V

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lau;->onCreate(Landroid/os/Bundle;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Ldhz;->a()V

    .line 44
    :cond_0
    return-void
.end method
