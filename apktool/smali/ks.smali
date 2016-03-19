.class public final Lks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1651
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1652
    new-instance v0, Llb;

    invoke-direct {v0}, Llb;-><init>()V

    sput-object v0, Lks;->a:Llc;

    .line 1674
    :goto_0
    return-void

    .line 1653
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1654
    new-instance v0, Lla;

    invoke-direct {v0}, Lla;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1655
    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1656
    new-instance v0, Lkz;

    invoke-direct {v0}, Lkz;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1657
    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 1658
    new-instance v0, Lky;

    invoke-direct {v0}, Lky;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1659
    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 1660
    new-instance v0, Lkx;

    invoke-direct {v0}, Lkx;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1661
    :cond_4
    const/16 v1, 0xf

    if-lt v0, v1, :cond_5

    .line 1662
    new-instance v0, Lkv;

    invoke-direct {v0}, Lkv;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1663
    :cond_5
    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    .line 1664
    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1665
    :cond_6
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 1666
    new-instance v0, Lku;

    invoke-direct {v0}, Lku;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1667
    :cond_7
    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    .line 1668
    new-instance v0, Lkt;

    invoke-direct {v0}, Lkt;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1669
    :cond_8
    const/4 v1, 0x7

    if-lt v0, v1, :cond_9

    .line 1670
    new-instance v0, Llc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llc;-><init>(B)V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0

    .line 1672
    :cond_9
    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    sput-object v0, Lks;->a:Llc;

    goto :goto_0
.end method

.method public static a(III)I
    .locals 1

    .prologue
    .line 2236
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1, p2}, Llc;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2831
    sget-object v0, Lks;->a:Llc;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Llc;->a(Landroid/view/View;Z)V

    .line 2832
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2461
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->a(Landroid/view/View;F)V

    .line 2462
    return-void
.end method

.method public static a(Landroid/view/View;Lii;)V
    .locals 1

    .prologue
    .line 1846
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->a(Landroid/view/View;Lii;)V

    .line 1847
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1924
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1925
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1941
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1, p2, p3}, Llc;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1942
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2844
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->b(Landroid/view/View;Z)V

    .line 2845
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1684
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2477
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->b(Landroid/view/View;F)V

    .line 2478
    return-void
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1695
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2493
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->c(Landroid/view/View;F)V

    .line 2494
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1983
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->c(Landroid/view/View;I)V

    .line 1984
    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2571
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->d(Landroid/view/View;F)V

    .line 2572
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 2082
    sget-object v0, Lks;->a:Llc;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Llc;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 2083
    return-void
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2583
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->e(Landroid/view/View;F)V

    .line 2584
    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 2332
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->d(Landroid/view/View;I)V

    .line 2333
    return-void
.end method

.method public static f(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2671
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0, p1}, Llc;->f(Landroid/view/View;F)V

    .line 2672
    return-void
.end method
