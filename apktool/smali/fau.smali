.class public final Lfau;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lbng;


# direct methods
.method public constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 8105
    iput-object p1, p0, Lfau;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 4110
    packed-switch p1, :pswitch_data_0

    .line 4118
    iget-object v0, p0, Lfau;->a:Lbng;

    .line 6285
    iget-object v0, v0, Lbng;->aU:Lcom/google/android/apps/hangouts/hangout/ProximityCoverView;

    .line 4118
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ProximityCoverView;->c()V

    .line 4121
    :goto_0
    iget-object v0, p0, Lfau;->a:Lbng;

    .line 7285
    invoke-virtual {v0}, Lbng;->X()V

    .line 4122
    return-void

    .line 4112
    :pswitch_0
    iget-object v0, p0, Lfau;->a:Lbng;

    .line 4285
    iget-object v0, v0, Lbng;->aU:Lcom/google/android/apps/hangouts/hangout/ProximityCoverView;

    .line 4112
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ProximityCoverView;->a()V

    goto :goto_0

    .line 4115
    :pswitch_1
    iget-object v0, p0, Lfau;->a:Lbng;

    .line 5285
    iget-object v0, v0, Lbng;->aU:Lcom/google/android/apps/hangouts/hangout/ProximityCoverView;

    .line 4115
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ProximityCoverView;->b()V

    goto :goto_0

    .line 4110
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
