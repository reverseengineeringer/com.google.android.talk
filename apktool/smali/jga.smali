.class public final Ljga;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljga;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Ljga;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8681
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8682
    iput-object v0, p0, Ljga;->a:Ljava/lang/String;

    .line 8683
    iput-object v0, p0, Ljga;->b:Ljava/lang/String;

    .line 8684
    iput-object v0, p0, Ljga;->c:Ljava/lang/Boolean;

    .line 8685
    iput-object v0, p0, Ljga;->d:Ljava/lang/Boolean;

    .line 8686
    iput-object v0, p0, Ljga;->e:Ljava/lang/Boolean;

    .line 8687
    iput-object v0, p0, Ljga;->eD:Llyd;

    .line 8688
    const/4 v0, -0x1

    iput v0, p0, Ljga;->eE:I

    .line 8689
    return-void
.end method

.method public static d()[Ljga;
    .locals 2

    .prologue
    .line 8653
    sget-object v0, Ljga;->f:[Ljga;

    if-nez v0, :cond_1

    .line 8654
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8656
    :try_start_0
    sget-object v0, Ljga;->f:[Ljga;

    if-nez v0, :cond_0

    .line 8657
    const/4 v0, 0x0

    new-array v0, v0, [Ljga;

    sput-object v0, Ljga;->f:[Ljga;

    .line 8659
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8661
    :cond_1
    sget-object v0, Ljga;->f:[Ljga;

    return-object v0

    .line 8659
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
    .line 11735
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11736
    sparse-switch v0, :sswitch_data_0

    .line 11740
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11741
    :sswitch_0
    return-object p0

    .line 11746
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljga;->a:Ljava/lang/String;

    goto :goto_0

    .line 11750
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljga;->b:Ljava/lang/String;

    goto :goto_0

    .line 11754
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljga;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 11758
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljga;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 11762
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljga;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 11736
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 8694
    const/4 v0, 0x1

    iget-object v1, p0, Ljga;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8695
    const/4 v0, 0x2

    iget-object v1, p0, Ljga;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8696
    iget-object v0, p0, Ljga;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 8697
    const/4 v0, 0x3

    iget-object v1, p0, Ljga;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 8699
    :cond_0
    iget-object v0, p0, Ljga;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 8700
    const/4 v0, 0x4

    iget-object v1, p0, Ljga;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 8702
    :cond_1
    iget-object v0, p0, Ljga;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 8703
    const/4 v0, 0x5

    iget-object v1, p0, Ljga;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 8705
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8706
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8710
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8711
    const/4 v1, 0x1

    iget-object v2, p0, Ljga;->a:Ljava/lang/String;

    .line 8712
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8713
    const/4 v1, 0x2

    iget-object v2, p0, Ljga;->b:Ljava/lang/String;

    .line 8714
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8715
    iget-object v1, p0, Ljga;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 8716
    const/4 v1, 0x3

    iget-object v2, p0, Ljga;->c:Ljava/lang/Boolean;

    .line 8717
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8717
    add-int/2addr v0, v1

    .line 8719
    :cond_0
    iget-object v1, p0, Ljga;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 8720
    const/4 v1, 0x4

    iget-object v2, p0, Ljga;->d:Ljava/lang/Boolean;

    .line 8721
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8721
    add-int/2addr v0, v1

    .line 8723
    :cond_1
    iget-object v1, p0, Ljga;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 8724
    const/4 v1, 0x5

    iget-object v2, p0, Ljga;->e:Ljava/lang/Boolean;

    .line 8725
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8725
    add-int/2addr v0, v1

    .line 8727
    :cond_2
    return v0
.end method
