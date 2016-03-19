.class public final Lcfv;
.super Lau;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field aj:Lhkx;

.field private final ak:Lcfc;

.field private final al:Lcfw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lau;-><init>()V

    .line 27
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iput-object v0, p0, Lcfv;->ak:Lcfc;

    .line 28
    new-instance v0, Lcfw;

    .line 1030
    invoke-direct {v0, p0}, Lcfw;-><init>(Lcfv;)V

    .line 28
    iput-object v0, p0, Lcfv;->al:Lcfw;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    iget-object v0, p0, Lcfv;->ak:Lcfc;

    invoke-virtual {p0}, Lcfv;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_participant_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcfc;->a(Ljava/lang/String;)Lhkx;

    move-result-object v0

    iput-object v0, p0, Lcfv;->aj:Lhkx;

    .line 57
    invoke-virtual {p0}, Lcfv;->getActivity()Lba;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 60
    sget v3, Laal;->fJ:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 61
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 62
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->gZ:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->U:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    sget v0, Laen;->cD:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->cL:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcfv;->aj:Lhkx;

    .line 68
    invoke-virtual {v6}, Lhkx;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 66
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget v0, Laen;->cC:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cK:I

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcfv;->aj:Lhkx;

    .line 72
    invoke-virtual {v5}, Lhkx;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Lcfc;->a()Lcfc;

    .line 75
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcfc;->a()Lcfc;

    .line 93
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcfv;->ak:Lcfc;

    iget-object v1, p0, Lcfv;->aj:Lhkx;

    invoke-virtual {v1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcfc;->d(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Lau;->onDismiss(Landroid/content/DialogInterface;)V

    .line 102
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lau;->onStart()V

    .line 81
    iget-object v0, p0, Lcfv;->ak:Lcfc;

    iget-object v1, p0, Lcfv;->al:Lcfw;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 82
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lau;->onStop()V

    .line 87
    iget-object v0, p0, Lcfv;->ak:Lcfc;

    iget-object v1, p0, Lcfv;->al:Lcfw;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 88
    return-void
.end method
