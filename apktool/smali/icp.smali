.class public final Licp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Licp;->a:Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Licp;->a:Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;

    .line 1019
    iget-object v0, v0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->a:Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Licp;->a:Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;

    iget-object v1, p0, Licp;->a:Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;

    .line 2019
    iget-object v1, v1, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->a:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Licp;->a:Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;

    .line 3019
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->a:Ljava/lang/String;

    .line 109
    :cond_0
    return-void
.end method
