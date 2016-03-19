.class public final Lkml;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkml;",
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
            "Lkml;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Lkml;


# instance fields
.field public b:Llyt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 565
    const-class v0, Lkml;

    const-wide/32 v2, 0x2ebd032a

    .line 566
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lkml;->a:Llyc;

    .line 571
    const/4 v0, 0x0

    new-array v0, v0, [Lkml;

    sput-object v0, Lkml;->c:[Lkml;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1586
    iput-object v0, p0, Lkml;->b:Llyt;

    .line 1587
    iput-object v0, p0, Lkml;->eD:Llyd;

    .line 1588
    const/4 v0, -0x1

    iput v0, p0, Lkml;->eE:I

    .line 583
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1616
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1617
    sparse-switch v0, :sswitch_data_0

    .line 1621
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    :sswitch_0
    return-object p0

    .line 1627
    :sswitch_1
    iget-object v0, p0, Lkml;->b:Llyt;

    if-nez v0, :cond_1

    .line 1628
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Lkml;->b:Llyt;

    .line 1630
    :cond_1
    iget-object v0, p0, Lkml;->b:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1617
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
    .line 595
    iget-object v0, p0, Lkml;->b:Llyt;

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x1

    iget-object v1, p0, Lkml;->b:Llyt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 598
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 599
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 603
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 604
    iget-object v1, p0, Lkml;->b:Llyt;

    if-eqz v1, :cond_0

    .line 605
    const/4 v1, 0x1

    iget-object v2, p0, Lkml;->b:Llyt;

    .line 606
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 608
    :cond_0
    return v0
.end method
