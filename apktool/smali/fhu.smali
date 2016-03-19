.class public final Lfhu;
.super Lau;


# instance fields
.field aj:Landroid/app/Dialog;

.field ak:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lau;-><init>()V

    iput-object v0, p0, Lfhu;->aj:Landroid/app/Dialog;

    iput-object v0, p0, Lfhu;->ak:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lfhu;->aj:Landroid/app/Dialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfhu;->f()V

    :cond_0
    iget-object v0, p0, Lfhu;->aj:Landroid/app/Dialog;

    return-object v0
.end method

.method public a(Lbg;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lau;->a(Lbg;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lfhu;->ak:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhu;->ak:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
