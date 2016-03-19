.class final Lhel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lhel;->a:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljxm;Ljxj;Lmdx;)Lhbl;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lhgv;

    iget-object v1, p0, Lhel;->a:Landroid/content/Context;

    iget-object v2, p0, Lhel;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/libraries/hangouts/video/internal/CallService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhgv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lhgv;->a(Ljava/lang/String;J)V

    .line 75
    new-instance v1, Lhhe;

    iget-object v2, p0, Lhel;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lhhe;-><init>(Landroid/content/Context;Lhgv;)V

    .line 76
    invoke-virtual {v1, p2}, Lhhe;->a(Ljxm;)V

    .line 77
    invoke-virtual {v1, p3}, Lhhe;->a(Ljxj;)V

    .line 78
    invoke-virtual {v1, p4}, Lhhe;->a(Lmdx;)V

    .line 79
    return-object v1
.end method

.method a(Lhkt;Lkju;)V
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p1}, Lhkt;->n()Ljava/lang/String;

    move-result-object v1

    .line 1060
    iget-object v0, p0, Lhel;->a:Landroid/content/Context;

    .line 1061
    invoke-static {v0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    const-class v2, Lhcb;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcb;

    .line 1062
    invoke-virtual {v0, v1}, Lhcb;->a(Ljava/lang/String;)Lhca;

    move-result-object v0

    .line 55
    new-instance v1, Lhem;

    invoke-virtual {p1}, Lhkt;->d()Lmdx;

    move-result-object v2

    invoke-direct {v1, p0, v0, p2, v2}, Lhem;-><init>(Lhel;Lhca;Lkju;Lmdx;)V

    .line 1067
    invoke-static {v1}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
