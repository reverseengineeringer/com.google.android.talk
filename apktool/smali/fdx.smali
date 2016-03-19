.class public final Lfdx;
.super Ldlj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/views/OverlayedAvatarView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/OverlayedAvatarView;Landroid/content/Context;Liog;I)V
    .locals 1

    .prologue
    .line 373
    iput-object p1, p0, Lfdx;->a:Lcom/google/android/apps/hangouts/views/OverlayedAvatarView;

    .line 1032
    sget v0, Lcom/google/android/apps/hangouts/views/OverlayedAvatarView;->a:I

    .line 374
    invoke-direct {p0, p2, p3, p4, v0}, Ldlj;-><init>(Landroid/content/Context;Liog;II)V

    .line 375
    return-void
.end method


# virtual methods
.method public a(Ldns;)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lfdx;->a:Lcom/google/android/apps/hangouts/views/OverlayedAvatarView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/views/OverlayedAvatarView;->a(Ldns;)V

    .line 385
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lfdx;->a:Lcom/google/android/apps/hangouts/views/OverlayedAvatarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/OverlayedAvatarView;->a(Ldns;)V

    .line 380
    return-void
.end method
