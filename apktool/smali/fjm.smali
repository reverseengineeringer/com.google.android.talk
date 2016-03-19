.class final Lfjm;
.super Ljava/lang/Object;

# interfaces
.implements Lfih;


# instance fields
.field final synthetic a:Lfhw;

.field final synthetic b:I

.field final synthetic c:Lfjj;


# direct methods
.method constructor <init>(Lfjj;Lfhw;I)V
    .locals 0

    iput-object p1, p0, Lfjm;->c:Lfjj;

    iput-object p2, p0, Lfjm;->a:Lfhw;

    iput p3, p0, Lfjm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lfjm;->c:Lfjj;

    .line 1000
    iget-object v0, v0, Lfjj;->a:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lfjm;->c:Lfjj;

    .line 2000
    iget-object v0, v0, Lfjj;->k:Lfjs;

    .line 0
    iget-object v1, p0, Lfjm;->a:Lfhw;

    iget v2, p0, Lfjm;->b:I

    invoke-interface {v0, p1, v1, v2}, Lfjs;->a(Lcom/google/android/gms/common/ConnectionResult;Lfhw;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfjm;->c:Lfjj;

    .line 3000
    iget-object v0, v0, Lfjj;->a:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lfjm;->c:Lfjj;

    .line 4000
    iget-object v1, v1, Lfjj;->a:Ljava/util/concurrent/locks/Lock;

    .line 0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
