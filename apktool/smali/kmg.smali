.class public final Lkmg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkmg;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lkmi;",
            "Lkmg;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Lkmg;


# instance fields
.field public b:Llci;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 656
    const-class v0, Lkmg;

    const-wide/32 v2, 0x32fddca2

    .line 657
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lkmg;->a:Llyc;

    .line 662
    const/4 v0, 0x0

    new-array v0, v0, [Lkmg;

    sput-object v0, Lkmg;->c:[Lkmg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 672
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1677
    iput-object v0, p0, Lkmg;->b:Llci;

    .line 1678
    iput-object v0, p0, Lkmg;->eD:Llyd;

    .line 1679
    const/4 v0, -0x1

    iput v0, p0, Lkmg;->eE:I

    .line 674
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1707
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1708
    sparse-switch v0, :sswitch_data_0

    .line 1712
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1713
    :sswitch_0
    return-object p0

    .line 1718
    :sswitch_1
    iget-object v0, p0, Lkmg;->b:Llci;

    if-nez v0, :cond_1

    .line 1719
    new-instance v0, Llci;

    invoke-direct {v0}, Llci;-><init>()V

    iput-object v0, p0, Lkmg;->b:Llci;

    .line 1721
    :cond_1
    iget-object v0, p0, Lkmg;->b:Llci;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1708
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
    .line 686
    iget-object v0, p0, Lkmg;->b:Llci;

    if-eqz v0, :cond_0

    .line 687
    const/4 v0, 0x1

    iget-object v1, p0, Lkmg;->b:Llci;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 689
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 690
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 694
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 695
    iget-object v1, p0, Lkmg;->b:Llci;

    if-eqz v1, :cond_0

    .line 696
    const/4 v1, 0x1

    iget-object v2, p0, Lkmg;->b:Llci;

    .line 697
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    :cond_0
    return v0
.end method
