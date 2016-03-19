.class final Lhqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Lhqq;


# direct methods
.method constructor <init>(Lhqq;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lhqs;->b:Lhqq;

    iput-object p2, p0, Lhqs;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 878
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    .line 1881
    iget-object v0, p0, Lhqs;->a:Ljava/util/Comparator;

    iget-object v1, p0, Lhqs;->b:Lhqq;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lhqq;->a(I)Lhqb;

    move-result-object v1

    iget-object v2, p0, Lhqs;->b:Lhqq;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lhqq;->a(I)Lhqb;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 878
    return v0
.end method
