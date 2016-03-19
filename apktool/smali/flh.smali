.class public final Lflh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lflc;

.field private final b:I


# direct methods
.method public constructor <init>(Lflc;I)V
    .locals 0

    iput-object p1, p0, Lflh;->a:Lflc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lflh;->b:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 0
    const-string v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lflh;->a:Lflc;

    .line 1000
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 0
    :goto_0
    invoke-static {v1, v0}, Lflc;->a(Lflc;Lfma;)Lfma;

    iget-object v0, p0, Lflh;->a:Lflc;

    iget v1, p0, Lflh;->b:I

    invoke-virtual {v0, v1}, Lflc;->a(I)V

    return-void

    .line 1000
    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lfma;

    if-eqz v2, :cond_1

    check-cast v0, Lfma;

    goto :goto_0

    :cond_1
    new-instance v0, Lfmc;

    invoke-direct {v0, p2}, Lfmc;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    iget-object v0, p0, Lflh;->a:Lflc;

    iget-object v0, v0, Lflc;->b:Landroid/os/Handler;

    iget-object v1, p0, Lflh;->a:Lflc;

    iget-object v1, v1, Lflc;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lflh;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
