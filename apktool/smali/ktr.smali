.class public final Lktr;
.super Lkso;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkso",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0}, Lkso;-><init>()V

    .line 417
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lktr;->e:Ljava/util/Comparator;

    .line 418
    return-void
.end method


# virtual methods
.method public synthetic a()Lksm;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1494
    iget v0, p0, Lktr;->c:I

    packed-switch v0, :pswitch_data_0

    .line 1500
    iget-object v0, p0, Lktr;->e:Ljava/util/Comparator;

    iget-object v1, p0, Lktr;->b:[Lkss;

    iget v2, p0, Lktr;->c:I

    .line 3057
    invoke-static {v0, v3, v1, v2}, Lkto;->a(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lkto;

    move-result-object v0

    .line 1498
    :goto_0
    return-object v0

    .line 1496
    :pswitch_0
    iget-object v0, p0, Lktr;->e:Ljava/util/Comparator;

    invoke-static {v0}, Lkto;->a(Ljava/util/Comparator;)Lkto;

    move-result-object v0

    goto :goto_0

    .line 1498
    :pswitch_1
    iget-object v0, p0, Lktr;->e:Ljava/util/Comparator;

    iget-object v1, p0, Lktr;->b:[Lkss;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lkss;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lktr;->b:[Lkss;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lkss;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 2057
    invoke-static {v0, v1, v2}, Lkto;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lkto;

    move-result-object v0

    goto :goto_0

    .line 1494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;
    .locals 0

    .prologue
    .line 3427
    invoke-super {p0, p1, p2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    .line 408
    return-object p0
.end method
