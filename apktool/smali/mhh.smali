.class public final Lmhh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;",
            "Lkog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Laal;->u(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 77
    iput-object v0, p0, Lmhh;->a:Ljava/util/LinkedHashMap;

    .line 78
    return-void
.end method


# virtual methods
.method public a()Lmhg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmhg",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lmhg;

    iget-object v1, p0, Lmhh;->a:Ljava/util/LinkedHashMap;

    .line 2034
    invoke-direct {v0, v1}, Lmhg;-><init>(Ljava/util/Map;)V

    .line 84
    return-object v0
.end method

.method public a(Ljava/lang/Object;Lkog;)Lmhh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lkog;",
            ")",
            "Lmhh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The provider of the value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lmhh;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method
