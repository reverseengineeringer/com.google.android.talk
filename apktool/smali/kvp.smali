.class public final Lkvp;
.super Lkur;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkur",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method public constructor <init>(Lkvr;Lkvr;Lkng;Lkng;JJIILavb;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkvr;",
            "Lkvr;",
            "Lkng",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lkng",
            "<",
            "Ljava/lang/Object;",
            ">;JJII",
            "Lavb;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4065
    invoke-direct/range {p0 .. p12}, Lkur;-><init>(Lkvr;Lkvr;Lkng;Lkng;JJIILavb;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4076
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 4084
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4085
    invoke-virtual {p0, p1}, Lkvp;->a(Ljava/io/ObjectInputStream;)Lkuf;

    move-result-object v0

    .line 4086
    invoke-virtual {v0}, Lkuf;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lkvp;->j:Ljava/util/concurrent/ConcurrentMap;

    .line 4087
    invoke-virtual {p0, p1}, Lkvp;->b(Ljava/io/ObjectInputStream;)V

    .line 4088
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4091
    iget-object v0, p0, Lkvp;->j:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 4079
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4080
    invoke-virtual {p0, p1}, Lkvp;->a(Ljava/io/ObjectOutputStream;)V

    .line 4081
    return-void
.end method
