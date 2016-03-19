.class public final Leef;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/realtimechat/wakelock/impl/DebugWakelocksActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/realtimechat/wakelock/impl/DebugWakelocksActivity;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    iput-object p1, p0, Leef;->a:Lcom/google/android/apps/hangouts/realtimechat/wakelock/impl/DebugWakelocksActivity;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leef;->setOrientation(I)V

    .line 57
    new-instance v0, Leeg;

    iget-object v1, p0, Leef;->a:Lcom/google/android/apps/hangouts/realtimechat/wakelock/impl/DebugWakelocksActivity;

    invoke-direct {v0, p0, v1}, Leeg;-><init>(Leef;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Leef;->addView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Leef;->a:Lcom/google/android/apps/hangouts/realtimechat/wakelock/impl/DebugWakelocksActivity;

    .line 1031
    iget-object v0, v0, Lcom/google/android/apps/hangouts/realtimechat/wakelock/impl/DebugWakelocksActivity;->b:Landroid/widget/ListView;

    .line 62
    invoke-virtual {p0, v0}, Leef;->addView(Landroid/view/View;)V

    .line 63
    return-void
.end method
