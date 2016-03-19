.class final Lijr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lijr;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 90
    check-cast p1, Lijr;

    .line 1096
    iget-object v0, p0, Lijr;->c:Ljava/lang/String;

    iget-object v1, p1, Lijr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1097
    if-nez v0, :cond_0

    .line 1098
    iget v0, p0, Lijr;->a:I

    iget v1, p1, Lijr;->a:I

    if-ne v0, v1, :cond_2

    .line 1099
    iget v0, p0, Lijr;->b:I

    iget v1, p1, Lijr;->b:I

    if-ne v0, v1, :cond_1

    .line 1100
    const/4 v0, 0x0

    .line 1105
    :cond_0
    :goto_0
    return v0

    .line 1102
    :cond_1
    iget v0, p0, Lijr;->b:I

    iget v1, p1, Lijr;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1105
    :cond_2
    iget v0, p0, Lijr;->a:I

    iget v1, p1, Lijr;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
