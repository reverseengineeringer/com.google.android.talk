.class public final Ligb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liga;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ligb;->a:Ljava/util/List;

    move v0, v1

    .line 29
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 30
    aget v2, p2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 31
    :goto_1
    iget-object v3, p0, Ligb;->a:Ljava/util/List;

    new-instance v4, Liga;

    aget-object v5, p1, v0

    invoke-direct {v4, v5, v2}, Liga;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 30
    goto :goto_1

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Liga;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Ligb;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
