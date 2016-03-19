.class public final Lfay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/views/BalanceView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/BalanceView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lfay;->a:Lcom/google/android/apps/hangouts/views/BalanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lfay;->a:Lcom/google/android/apps/hangouts/views/BalanceView;

    .line 1026
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/BalanceView;->b:Lhpu;

    .line 63
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lbfd;->N()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lfay;->a:Lcom/google/android/apps/hangouts/views/BalanceView;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/BalanceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Laal;->a(Lbfd;Ldvv;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lfay;->a:Lcom/google/android/apps/hangouts/views/BalanceView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/BalanceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
