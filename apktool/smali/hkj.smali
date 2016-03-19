.class final Lhkj;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhjz;


# direct methods
.method constructor <init>(Lhjz;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lhkj;->a:Lhjz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 823
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 824
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 826
    const-string v1, "vclib"

    .line 829
    invoke-virtual {p0}, Lhkj;->isInitialStickyBroadcast()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x51

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "WiredHeadsetReceiver.onReceive: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isInitialStickyBroadcast="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1073
    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 830
    packed-switch v0, :pswitch_data_0

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 832
    :pswitch_0
    iget-object v0, p0, Lhkj;->a:Lhjz;

    .line 2042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 832
    sget-object v1, Lhkd;->d:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 833
    iget-object v0, p0, Lhkj;->a:Lhjz;

    invoke-virtual {v0}, Lhjz;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lhkj;->a:Lhjz;

    .line 3042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 834
    sget-object v1, Lhkd;->b:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_1
    iget-object v0, p0, Lhkj;->a:Lhjz;

    .line 4042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 837
    sget-object v1, Lhkd;->a:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v0, p0, Lhkj;->a:Lhjz;

    .line 5042
    iget-object v0, v0, Lhjz;->h:Lhke;

    .line 840
    sget-object v1, Lhke;->c:Lhke;

    if-ne v0, v1, :cond_2

    .line 841
    iget-object v0, p0, Lhkj;->a:Lhjz;

    iget-object v1, p0, Lhkj;->a:Lhjz;

    .line 6042
    iget-object v1, v1, Lhjz;->g:Lhkd;

    .line 841
    invoke-virtual {v0, v1}, Lhjz;->a(Lhkd;)V

    goto :goto_0

    .line 843
    :cond_2
    iget-object v0, p0, Lhkj;->a:Lhjz;

    .line 7042
    invoke-virtual {v0}, Lhjz;->e()V

    goto :goto_0

    .line 848
    :pswitch_1
    iget-object v0, p0, Lhkj;->a:Lhjz;

    .line 8042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 848
    sget-object v1, Lhkd;->d:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v0, p0, Lhkj;->a:Lhjz;

    .line 9042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 849
    sget-object v1, Lhkd;->b:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 851
    iget-object v0, p0, Lhkj;->a:Lhjz;

    .line 10042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 851
    sget-object v1, Lhkd;->a:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 852
    iget-object v0, p0, Lhkj;->a:Lhjz;

    sget-object v1, Lhkd;->d:Lhkd;

    invoke-virtual {v0, v1}, Lhjz;->a(Lhkd;)V

    goto :goto_0

    .line 830
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
