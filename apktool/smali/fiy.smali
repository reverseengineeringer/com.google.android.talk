.class final Lfiy;
.super Lfjo;


# instance fields
.field final synthetic a:Lfiv;

.field final synthetic b:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic c:Lfix;


# direct methods
.method constructor <init>(Lfix;Lfjs;Lfiv;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lfiy;->c:Lfix;

    iput-object p3, p0, Lfiy;->a:Lfiv;

    iput-object p4, p0, Lfiy;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lfjo;-><init>(Lfjs;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lfiy;->a:Lfiv;

    iget-object v1, p0, Lfiy;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lfiv;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lfiv;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lfiv;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lfiv;->i()V

    invoke-virtual {v0}, Lfiv;->h()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lfiv;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
