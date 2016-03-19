.class final Lfjd;
.super Lfjo;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Lfjc;


# direct methods
.method constructor <init>(Lfjc;Lfjs;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lfjd;->b:Lfjc;

    iput-object p3, p0, Lfjd;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lfjo;-><init>(Lfjs;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lfjd;->b:Lfjc;

    iget-object v0, v0, Lfjc;->a:Lfiv;

    iget-object v1, p0, Lfjd;->a:Lcom/google/android/gms/common/ConnectionResult;

    .line 1000
    invoke-virtual {v0, v1}, Lfiv;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 0
    return-void
.end method
