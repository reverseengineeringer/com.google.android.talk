.class public final Lebd;
.super Ldyx;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 15
    iput-object p2, p0, Lebd;->a:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lebd;->e:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 4

    .prologue
    .line 21
    new-instance v1, Lbfz;

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 22
    invoke-direct {v1, v0, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-virtual {v1}, Lbfz;->a()V

    .line 25
    :try_start_0
    iget-object v0, p0, Lebd;->a:Ljava/lang/String;

    iget-object v2, p0, Lebd;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lbfz;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 2051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 27
    invoke-static {v1, v2, v3}, Lbft;->a(Lbfz;J)V

    .line 29
    :cond_0
    invoke-virtual {v1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Lbfz;->c()V

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lbfz;->c()V

    throw v0
.end method
