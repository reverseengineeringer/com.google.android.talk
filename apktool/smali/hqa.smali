.class final Lhqa;
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
        "Lhqb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 13
    check-cast p1, Lhqb;

    check-cast p2, Lhqb;

    .line 1016
    const-string v0, "device_index"

    invoke-interface {p1, v0, v2}, Lhqb;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1017
    const-string v1, "device_index"

    invoke-interface {p2, v1, v2}, Lhqb;->a(Ljava/lang/String;I)I

    move-result v1

    .line 1019
    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 13
    goto :goto_0
.end method
