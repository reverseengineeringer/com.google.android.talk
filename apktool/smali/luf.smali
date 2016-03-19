.class public final Lluf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lluf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Lluf;


# instance fields
.field public a:Llku;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 871
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1876
    iput-object v0, p0, Lluf;->a:Llku;

    .line 1877
    iput-object v0, p0, Lluf;->eD:Llyd;

    .line 1878
    const/4 v0, -0x1

    iput v0, p0, Lluf;->eE:I

    .line 873
    return-void
.end method

.method public static d()[Lluf;
    .locals 2

    .prologue
    .line 855
    sget-object v0, Lluf;->b:[Lluf;

    if-nez v0, :cond_1

    .line 856
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_0
    sget-object v0, Lluf;->b:[Lluf;

    if-nez v0, :cond_0

    .line 859
    const/4 v0, 0x0

    new-array v0, v0, [Lluf;

    sput-object v0, Lluf;->b:[Lluf;

    .line 861
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    :cond_1
    sget-object v0, Lluf;->b:[Lluf;

    return-object v0

    .line 861
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1906
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1907
    sparse-switch v0, :sswitch_data_0

    .line 1911
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1912
    :sswitch_0
    return-object p0

    .line 1917
    :sswitch_1
    iget-object v0, p0, Lluf;->a:Llku;

    if-nez v0, :cond_1

    .line 1918
    new-instance v0, Llku;

    invoke-direct {v0}, Llku;-><init>()V

    iput-object v0, p0, Lluf;->a:Llku;

    .line 1920
    :cond_1
    iget-object v0, p0, Lluf;->a:Llku;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1907
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lluf;->a:Llku;

    if-eqz v0, :cond_0

    .line 886
    const/4 v0, 0x1

    iget-object v1, p0, Lluf;->a:Llku;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 888
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 889
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 893
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 894
    iget-object v1, p0, Lluf;->a:Llku;

    if-eqz v1, :cond_0

    .line 895
    const/4 v1, 0x1

    iget-object v2, p0, Lluf;->a:Llku;

    .line 896
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 898
    :cond_0
    return v0
.end method
