.class public final Lbru;
.super Lbrx;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;)V
    .locals 0

    .prologue
    .line 1521
    invoke-direct {p0}, Lbrx;-><init>()V

    .line 536
    iput-object p1, p0, Lbru;->a:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 537
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 541
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->gr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 546
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bm:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lbru;->a:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 2041
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->a()V

    .line 557
    return-void
.end method
