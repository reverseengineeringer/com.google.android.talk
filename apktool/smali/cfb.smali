.class public final Lcfb;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;)V
    .locals 1

    .prologue
    .line 21
    iput-object p1, p0, Lcfb;->a:Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 29
    invoke-super {p0}, Lhku;->a()V

    .line 30
    iget-object v1, p0, Lcfb;->a:Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;

    .line 2066
    iget-object v0, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 2069
    invoke-virtual {v0}, Lcgw;->n()Z

    move-result v2

    invoke-virtual {v0}, Lcgw;->o()I

    move-result v3

    .line 2068
    invoke-virtual {v0, v2, v3}, Lcgw;->a(ZI)Z

    move-result v2

    .line 2070
    if-eqz v2, :cond_3

    .line 2071
    invoke-virtual {v0}, Lcgw;->p()Z

    move-result v2

    .line 2072
    iget-object v3, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2074
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ew:I

    .line 2072
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2076
    iget-object v3, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 2078
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Laal;->dB:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2076
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2080
    iget-object v3, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 2082
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dA:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2080
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2084
    iget-object v0, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2085
    :goto_3
    return-void

    .line 2075
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eo:I

    goto :goto_0

    .line 2079
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Laal;->da:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 2083
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->cZ:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 2086
    :cond_3
    iget-object v0, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public a(Lhkw;)V
    .locals 5

    .prologue
    .line 24
    iget-object v1, p0, Lcfb;->a:Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;

    .line 1066
    iget-object v0, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 1069
    invoke-virtual {v0}, Lcgw;->n()Z

    move-result v2

    invoke-virtual {v0}, Lcgw;->o()I

    move-result v3

    .line 1068
    invoke-virtual {v0, v2, v3}, Lcgw;->a(ZI)Z

    move-result v2

    .line 1070
    if-eqz v2, :cond_3

    .line 1071
    invoke-virtual {v0}, Lcgw;->p()Z

    move-result v2

    .line 1072
    iget-object v3, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1074
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ew:I

    .line 1072
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1076
    iget-object v3, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1078
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Laal;->dB:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1076
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1080
    iget-object v3, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1082
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dA:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1080
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1084
    iget-object v0, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    :goto_3
    return-void

    .line 1075
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eo:I

    goto :goto_0

    .line 1079
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Laal;->da:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 1083
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->cZ:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 1086
    :cond_3
    iget-object v0, v1, Lcom/google/android/apps/hangouts/hangout/BroadcastOverlayView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
