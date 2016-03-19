.class public final Lchh;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/InCallDialpadActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/InCallDialpadActivity;)V
    .locals 1

    .prologue
    .line 16
    iput-object p1, p0, Lchh;->a:Lcom/google/android/apps/hangouts/hangout/InCallDialpadActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Lcgw;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lchh;->a:Lcom/google/android/apps/hangouts/hangout/InCallDialpadActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/InCallDialpadActivity;->finish()V

    .line 26
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 19
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lchh;->a:Lcom/google/android/apps/hangouts/hangout/InCallDialpadActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/InCallDialpadActivity;->finish()V

    .line 23
    :cond_0
    return-void
.end method
