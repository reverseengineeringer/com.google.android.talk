.class final Lbmt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lbrc;

.field final b:I


# direct methods
.method constructor <init>(Lbrc;I)V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iput-object p1, p0, Lbmt;->a:Lbrc;

    .line 628
    iput p2, p0, Lbmt;->b:I

    .line 629
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lbmt;->a:Lbrc;

    invoke-interface {v0}, Lbrc;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 638
    if-ne p1, p0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 641
    :cond_1
    instance-of v2, p1, Lbmt;

    if-eqz v2, :cond_3

    .line 642
    check-cast p1, Lbmt;

    .line 645
    iget-object v2, p1, Lbmt;->a:Lbrc;

    iget-object v3, p0, Lbmt;->a:Lbrc;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lbmt;->b:I

    iget v3, p0, Lbmt;->b:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 647
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 652
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lbmt;->a:Lbrc;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lbmt;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1083
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 652
    return v0
.end method
