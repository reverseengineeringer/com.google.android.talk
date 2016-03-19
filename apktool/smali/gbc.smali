.class public final Lgbc;
.super Lgbh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbh",
        "<",
        "Lgbc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lgbc;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lgbd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lgbh;-><init>()V

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lgbc;->a:Ljava/lang/String;

    iput-object v1, p0, Lgbc;->b:Lgbd;

    iput-object v1, p0, Lgbc;->o:Lgbj;

    const/4 v0, -0x1

    iput v0, p0, Lgbc;->p:I

    .line 0
    return-void
.end method

.method public static b()[Lgbc;
    .locals 2

    sget-object v0, Lgbc;->c:[Lgbc;

    if-nez v0, :cond_1

    sget-object v1, Lgbl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgbc;->c:[Lgbc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lgbc;

    sput-object v0, Lgbc;->c:[Lgbc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lgbc;->c:[Lgbc;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()I
    .locals 3

    invoke-super {p0}, Lgbh;->a()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lgbc;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lgbg;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lgbc;->b:Lgbd;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lgbc;->b:Lgbd;

    invoke-static {v1, v2}, Lgbg;->b(ILgbn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public synthetic a(Lgbf;)Lgbn;
    .locals 1

    .prologue
    .line 2000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgbf;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lgbc;->a(Lgbf;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lgbf;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbc;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lgbc;->b:Lgbd;

    if-nez v0, :cond_1

    new-instance v0, Lgbd;

    invoke-direct {v0}, Lgbd;-><init>()V

    iput-object v0, p0, Lgbc;->b:Lgbd;

    :cond_1
    iget-object v0, p0, Lgbc;->b:Lgbd;

    invoke-virtual {p1, v0}, Lgbf;->a(Lgbn;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lgbg;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lgbc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lgbg;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lgbc;->b:Lgbd;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lgbc;->b:Lgbd;

    invoke-virtual {p1, v0, v1}, Lgbg;->a(ILgbn;)V

    :cond_0
    invoke-super {p0, p1}, Lgbh;->a(Lgbg;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lgbc;

    if-eqz v1, :cond_0

    check-cast p1, Lgbc;

    iget-object v1, p0, Lgbc;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lgbc;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lgbc;->b:Lgbd;

    if-nez v1, :cond_5

    iget-object v1, p1, Lgbc;->b:Lgbd;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lgbc;->a(Lgbh;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lgbc;->a:Ljava/lang/String;

    iget-object v2, p1, Lgbc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lgbc;->b:Lgbd;

    iget-object v2, p1, Lgbc;->b:Lgbd;

    invoke-virtual {v1, v2}, Lgbd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lgbc;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgbc;->b:Lgbd;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lgbc;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lgbc;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgbc;->b:Lgbd;

    invoke-virtual {v1}, Lgbd;->hashCode()I

    move-result v1

    goto :goto_1
.end method
