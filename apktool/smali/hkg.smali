.class final Lhkg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhjz;


# direct methods
.method constructor <init>(Lhjz;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lhkg;->a:Lhjz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 17042
    iget-object v0, v0, Lhjz;->h:Lhke;

    .line 805
    sget-object v1, Lhke;->d:Lhke;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 18042
    iget-object v0, v0, Lhjz;->h:Lhke;

    .line 806
    sget-object v1, Lhke;->e:Lhke;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 19042
    iget-object v0, v0, Lhjz;->h:Lhke;

    .line 807
    sget-object v1, Lhke;->f:Lhke;

    if-ne v0, v1, :cond_1

    .line 808
    :cond_0
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 20042
    invoke-virtual {v0}, Lhjz;->k()V

    .line 810
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v2, 0xa

    const/4 v6, 0x3

    .line 727
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 728
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 731
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 733
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 734
    const-string v0, "vclib"

    const-string v1, "ACTION_AUDIO_STATE_CHANGED : STATE_AUDIO_CONNECTED"

    .line 1073
    invoke-static {v6, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lhkg;->a:Lhjz;

    sget-object v1, Lhke;->d:Lhke;

    .line 2042
    iput-object v1, v0, Lhjz;->h:Lhke;

    .line 738
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 3042
    invoke-virtual {v0}, Lhjz;->i()V

    .line 739
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 4042
    invoke-virtual {v0}, Lhjz;->e()V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    if-ne v0, v2, :cond_0

    .line 741
    const-string v0, "vclib"

    const-string v1, "ACTION_AUDIO_STATE_CHANGED : STATE_AUDIO_DISCONNECTED"

    .line 4073
    invoke-static {v6, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lhkg;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 5042
    invoke-virtual {v0}, Lhjz;->i()V

    .line 750
    invoke-direct {p0}, Lhkg;->a()V

    .line 751
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 6042
    invoke-virtual {v0}, Lhjz;->e()V

    goto :goto_0

    .line 754
    :cond_2
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    .line 758
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 761
    const-string v0, "vclib"

    const-string v2, "BluetoothReceiver.onReceive: got ACTION_CONNECTION_STATE_CHANGED, profileState="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 764
    invoke-virtual {p0}, Lhkg;->isInitialStickyBroadcast()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isInitialSticky="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6073
    invoke-static {v6, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 767
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 781
    :pswitch_1
    const-string v0, "vclib"

    const-string v1, "ACTION_CONNECTION_STATE_CHANGED : STATE_DISCONNECTED"

    .line 11073
    invoke-static {v6, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 12042
    invoke-virtual {v0}, Lhjz;->g()V

    .line 786
    invoke-direct {p0}, Lhkg;->a()V

    .line 787
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 13042
    const/4 v1, 0x0

    iput-object v1, v0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    .line 790
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 14042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 790
    sget-object v1, Lhkd;->c:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 15042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 791
    sget-object v1, Lhkd;->c:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 792
    iget-object v0, p0, Lhkg;->a:Lhjz;

    .line 16042
    invoke-virtual {v0}, Lhjz;->e()V

    goto/16 :goto_0

    .line 769
    :pswitch_2
    const-string v1, "vclib"

    const-string v2, "ACTION_CONNECTION_STATE_CHANGED : STATE_CONNECTED"

    .line 7073
    invoke-static {v6, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lhkg;->a:Lhjz;

    .line 8042
    iget-object v1, v1, Lhjz;->i:Ljava/util/Set;

    .line 771
    sget-object v2, Lhkd;->c:Lhkd;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v1, p0, Lhkg;->a:Lhjz;

    .line 9042
    invoke-virtual {v1}, Lhjz;->e()V

    .line 774
    iget-object v1, p0, Lhkg;->a:Lhjz;

    .line 10042
    iget-object v1, v1, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    .line 774
    if-nez v1, :cond_0

    .line 776
    iget-object v1, p0, Lhkg;->a:Lhjz;

    .line 11042
    iput-object v0, v1, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    .line 777
    iget-object v0, p0, Lhkg;->a:Lhjz;

    sget-object v1, Lhkd;->c:Lhkd;

    invoke-virtual {v0, v1}, Lhjz;->a(Lhkd;)V

    goto/16 :goto_0

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
