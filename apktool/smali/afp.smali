.class public final Lafp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Handler;

.field public final synthetic b:Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 7630
    iput-object p1, p0, Lafp;->b:Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7631
    iput-object p2, p0, Lafp;->a:Landroid/os/Handler;

    .line 7632
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2636
    const-string v0, "onStart"

    .line 3081
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->a(Ljava/lang/String;)V

    .line 2637
    return-void
.end method

.method public a(Laeu;)V
    .locals 4

    .prologue
    .line 3641
    const-string v1, "onEntryCreated, display name is "

    invoke-virtual {p1}, Laeu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4081
    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->a(Ljava/lang/String;)V

    .line 4610
    iget-object v0, p1, Laeu;->a:Ljava/util/List;

    .line 3643
    if-eqz v0, :cond_2

    .line 3644
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafh;

    .line 3645
    const-string v2, "onEntryCreated, "

    invoke-virtual {v0}, Lafh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5081
    :goto_2
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 3641
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3645
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 3648
    :cond_2
    const-string v0, "onEntryCreated, entry.getPhoneList() is null"

    .line 6081
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->a(Ljava/lang/String;)V

    .line 3651
    :cond_3
    iget-object v0, p0, Lafp;->a:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 3652
    iget-object v0, p0, Lafp;->a:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3653
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3655
    :cond_4
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 6659
    const-string v0, "onEnd"

    .line 7081
    invoke-static {v0}, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->a(Ljava/lang/String;)V

    .line 6660
    iget-object v0, p0, Lafp;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6661
    iget-object v0, p0, Lafp;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6663
    :cond_0
    return-void
.end method
