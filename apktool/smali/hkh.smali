.class final Lhkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic a:Lhjz;


# direct methods
.method constructor <init>(Lhjz;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lhkh;->a:Lhjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .prologue
    .line 698
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 699
    const-string v0, "vclib"

    const-string v1, "BluetoothProfile.ServiceListener : onServiceConnected"

    .line 1073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lhkh;->a:Lhjz;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .line 2042
    iput-object p2, v0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    .line 702
    iget-object v0, p0, Lhkh;->a:Lhjz;

    .line 3042
    iget-object v0, v0, Lhjz;->h:Lhke;

    .line 702
    sget-object v1, Lhke;->e:Lhke;

    if-ne v0, v1, :cond_0

    .line 703
    iget-object v0, p0, Lhkh;->a:Lhjz;

    .line 4042
    invoke-virtual {v0}, Lhjz;->f()V

    .line 706
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 710
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 711
    const-string v0, "vclib"

    const-string v1, "BluetoothProfile.ServiceListener : onServiceDisconnected"

    .line 4073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lhkh;->a:Lhjz;

    .line 5042
    invoke-virtual {v0}, Lhjz;->g()V

    .line 713
    iget-object v0, p0, Lhkh;->a:Lhjz;

    .line 6042
    iput-object v3, v0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    .line 714
    iget-object v0, p0, Lhkh;->a:Lhjz;

    .line 7042
    iput-object v3, v0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    .line 717
    iget-object v0, p0, Lhkh;->a:Lhjz;

    .line 8042
    iget-object v0, v0, Lhjz;->i:Ljava/util/Set;

    .line 717
    sget-object v1, Lhkd;->c:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lhkh;->a:Lhjz;

    .line 9042
    invoke-virtual {v0}, Lhjz;->e()V

    .line 721
    :cond_0
    return-void
.end method
